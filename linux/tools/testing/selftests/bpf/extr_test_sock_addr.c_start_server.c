
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int SOCK_STREAM ;
 int bind (int,struct sockaddr const*,int ) ;
 int close (int) ;
 int listen (int,int) ;
 int log_err (char*) ;
 int socket (int ,int,int ) ;

__attribute__((used)) static int start_server(int type, const struct sockaddr_storage *addr,
   socklen_t addr_len)
{
 int fd;

 fd = socket(addr->ss_family, type, 0);
 if (fd == -1) {
  log_err("Failed to create server socket");
  goto out;
 }

 if (bind(fd, (const struct sockaddr *)addr, addr_len) == -1) {
  log_err("Failed to bind server socket");
  goto close_out;
 }

 if (type == SOCK_STREAM) {
  if (listen(fd, 128) == -1) {
   log_err("Failed to listen on server socket");
   goto close_out;
  }
 }

 goto out;
close_out:
 close(fd);
 fd = -1;
out:
 return fd;
}
