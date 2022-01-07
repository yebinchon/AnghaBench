
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iter; } ;
typedef scalar_t__ ssize_t ;


 int iov_iter_advance (int *,size_t) ;
 scalar_t__ sock_recvmsg (struct socket*,struct msghdr*,int) ;

__attribute__((used)) static ssize_t
xs_sock_recvmsg(struct socket *sock, struct msghdr *msg, int flags, size_t seek)
{
 ssize_t ret;
 if (seek != 0)
  iov_iter_advance(&msg->msg_iter, seek);
 ret = sock_recvmsg(sock, msg, flags);
 return ret > 0 ? ret + seek : ret;
}
