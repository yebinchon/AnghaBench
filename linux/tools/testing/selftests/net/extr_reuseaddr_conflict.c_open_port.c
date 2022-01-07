
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v6only ;
struct sockaddr_in6 {int sin6_family; int sin6_addr; int sin6_port; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; TYPE_1__ sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int reuseaddr ;
typedef int addr6 ;
typedef int addr4 ;


 int AF_INET ;
 int AF_INET6 ;
 int INADDR_ANY ;
 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_V6ONLY ;
 int PORT ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int htonl (int ) ;
 int htons (int ) ;
 int in6addr_any ;
 int inet_addr (char*) ;
 scalar_t__ listen (int,int) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int,int ,int ) ;

int open_port(int ipv6, int any)
{
 int fd = -1;
 int reuseaddr = 1;
 int v6only = 1;
 int addrlen;
 int ret = -1;
 struct sockaddr *addr;
 int family = ipv6 ? AF_INET6 : AF_INET;

 struct sockaddr_in6 addr6 = {
  .sin6_family = AF_INET6,
  .sin6_port = htons(PORT),
  .sin6_addr = in6addr_any
 };
 struct sockaddr_in addr4 = {
  .sin_family = AF_INET,
  .sin_port = htons(PORT),
  .sin_addr.s_addr = any ? htonl(INADDR_ANY) : inet_addr("127.0.0.1"),
 };


 if (ipv6) {
  addr = (struct sockaddr*)&addr6;
  addrlen = sizeof(addr6);
 } else {
  addr = (struct sockaddr*)&addr4;
  addrlen = sizeof(addr4);
 }

 if ((fd = socket(family, SOCK_STREAM, IPPROTO_TCP)) < 0) {
  perror("socket");
  goto out;
 }

 if (ipv6 && setsockopt(fd, IPPROTO_IPV6, IPV6_V6ONLY, (void*)&v6only,
          sizeof(v6only)) < 0) {
  perror("setsockopt IPV6_V6ONLY");
  goto out;
 }

 if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &reuseaddr,
         sizeof(reuseaddr)) < 0) {
  perror("setsockopt SO_REUSEADDR");
  goto out;
 }

 if (bind(fd, addr, addrlen) < 0) {
  perror("bind");
  goto out;
 }

 if (any)
  return fd;

 if (listen(fd, 1) < 0) {
  perror("listen");
  goto out;
 }
 return fd;
out:
 close(fd);
 return ret;
}
