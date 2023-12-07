FROM mysql:8

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=randomUsername
ENV MYSQL_DATABASE=default_database

RUN echo "default_authentication_plugin=mysql_native_password" >> /etc/mysql/my.cnf

# Copy the schema.sql file into the /docker-entrypoint-initdb.d/ directory
# This directory is automatically executed during container startup
COPY schema.sql /docker-entrypoint-initdb.d/
