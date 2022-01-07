
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int msg_data_left (struct msghdr*) ;
 int security_socket_recvmsg (struct socket*,struct msghdr*,int ,int) ;
 int sock_recvmsg_nosec (struct socket*,struct msghdr*,int) ;

int sock_recvmsg(struct socket *sock, struct msghdr *msg, int flags)
{
 int err = security_socket_recvmsg(sock, msg, msg_data_left(msg), flags);

 return err ?: sock_recvmsg_nosec(sock, msg, flags);
}
