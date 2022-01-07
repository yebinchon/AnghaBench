
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int msg_data_left (struct msghdr*) ;
 int security_socket_sendmsg (struct socket*,struct msghdr*,int ) ;
 int sock_sendmsg_nosec (struct socket*,struct msghdr*) ;

int sock_sendmsg(struct socket *sock, struct msghdr *msg)
{
 int err = security_socket_sendmsg(sock, msg,
       msg_data_left(msg));

 return err ?: sock_sendmsg_nosec(sock, msg);
}
