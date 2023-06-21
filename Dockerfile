FROM ubuntu:latest
RUN apt-get update && apt-get install -y tzdata
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean
COPY . /var/www/html
EXPOSE 80
CMD apache2ctl -D FOREGROUND
