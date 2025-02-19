
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int AF_INET ;
 int AF_INET6 ;
 int close (int) ;
 int connect (int,struct sockaddr const*,int ) ;
 int log_err (char*) ;
 int socket (int,int,int ) ;

__attribute__((used)) static int connect_to_server(int type, const struct sockaddr_storage *addr,
        socklen_t addr_len)
{
 int domain;
 int fd = -1;

 domain = addr->ss_family;

 if (domain != AF_INET && domain != AF_INET6) {
  log_err("Unsupported address family");
  goto err;
 }

 fd = socket(domain, type, 0);
 if (fd == -1) {
  log_err("Failed to create client socket");
  goto err;
 }

 if (connect(fd, (const struct sockaddr *)addr, addr_len) == -1) {
  log_err("Fail to connect to server");
  goto err;
 }

 goto out;
err:
 close(fd);
 fd = -1;
out:
 return fd;
}
