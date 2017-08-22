FROM nginx:alpine
LABEL maintainer "Vladimir Goldetsky <goldetsky@gmail.com>"

RUN apk add --no-cache nginx-mod-http-lua openssl

EXPOSE 80 443

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
