
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int addr ;


 int AF_INET ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr const*,int) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int log_err (char*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int connect_to_server(int server_fd)
{
 struct sockaddr_storage addr;
 socklen_t len = sizeof(addr);
 int fd;

 fd = socket(AF_INET, SOCK_STREAM, 0);
 if (fd < 0) {
  log_err("Failed to create client socket");
  return -1;
 }

 if (getsockname(server_fd, (struct sockaddr *)&addr, &len)) {
  log_err("Failed to get server addr");
  goto out;
 }

 if (connect(fd, (const struct sockaddr *)&addr, len) < 0) {
  log_err("Fail to connect to server");
  goto out;
 }

 return fd;

out:
 close(fd);
 return -1;
}
