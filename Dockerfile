FROM nginx:alpine
RUN apk add --no-cache python3 py3-pip
RUN python3 -m pip install Flask
RUN apk add curl
ADD app.py /
ENTRYPOINT ["/usr/bin/flask", "run", "--host=0.0.0.0"]
EXPOSE 8080/tcp
EXPOSE 8080/udp

