FROM httpd:alpine
MAINTAINER yhchiang

RUN apk add python3
RUN apk add py3-pip
RUN pip3 install cvdupdate
RUN cvd config set --dbdir /usr/local/apache2/htdocs
RUN cvd update


