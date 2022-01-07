
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iter; } ;


 int iov_iter_advance (int *,size_t) ;
 int sock_sendmsg (struct socket*,struct msghdr*) ;

__attribute__((used)) static int xs_sendmsg(struct socket *sock, struct msghdr *msg, size_t seek)
{
 if (seek)
  iov_iter_advance(&msg->msg_iter, seek);
 return sock_sendmsg(sock, msg);
}
