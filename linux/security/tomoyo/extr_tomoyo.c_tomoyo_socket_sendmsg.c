
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int tomoyo_socket_sendmsg_permission (struct socket*,struct msghdr*,int) ;

__attribute__((used)) static int tomoyo_socket_sendmsg(struct socket *sock, struct msghdr *msg,
     int size)
{
 return tomoyo_socket_sendmsg_permission(sock, msg, size);
}
