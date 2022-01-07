
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int dummy; } ;




 scalar_t__ kernel_getsockname (struct socket*,struct sockaddr*) ;
 unsigned short ntohs (int ) ;

__attribute__((used)) static unsigned short xs_sock_getport(struct socket *sock)
{
 struct sockaddr_storage buf;
 unsigned short port = 0;

 if (kernel_getsockname(sock, (struct sockaddr *)&buf) < 0)
  goto out;
 switch (buf.ss_family) {
 case 128:
  port = ntohs(((struct sockaddr_in6 *)&buf)->sin6_port);
  break;
 case 129:
  port = ntohs(((struct sockaddr_in *)&buf)->sin_port);
 }
out:
 return port;
}
