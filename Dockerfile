#!/usr/bin/env python
FROM ubuntu:16.04
MAINTAINER VISHAL SHARMA "vishalsharmapythondev@gmail.com"
RUN apt-get update -y && \
   apt-get install -y python-pip python-dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ADD . /app
RUN chmod 644 app.py
CMD ["python","app.py"]
