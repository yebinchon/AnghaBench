
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int tomoyo_socket_bind_permission (struct socket*,struct sockaddr*,int) ;

__attribute__((used)) static int tomoyo_socket_bind(struct socket *sock, struct sockaddr *addr,
         int addr_len)
{
 return tomoyo_socket_bind_permission(sock, addr, addr_len);
}
