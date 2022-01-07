
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iter; } ;
typedef int ssize_t ;


 int READ ;
 int iov_iter_discard (int *,int ,size_t) ;
 int sock_recvmsg (struct socket*,struct msghdr*,int) ;

__attribute__((used)) static ssize_t
xs_read_discard(struct socket *sock, struct msghdr *msg, int flags,
  size_t count)
{
 iov_iter_discard(&msg->msg_iter, READ, count);
 return sock_recvmsg(sock, msg, flags);
}
