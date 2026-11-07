FROM nginx:alpine
LABEL org.opencontainers.image.title="my-workstation-web"
LABEL org.opencontainers.image.description="Codyssey workstation mission custom nginx"
ENV APP_ENV=dev
COPY app/ /usr/share/nginx/html
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
