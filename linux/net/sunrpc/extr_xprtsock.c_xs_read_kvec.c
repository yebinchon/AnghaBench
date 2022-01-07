
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iter; } ;
struct kvec {int dummy; } ;
typedef int ssize_t ;


 int READ ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,size_t) ;
 int xs_sock_recvmsg (struct socket*,struct msghdr*,int,size_t) ;

__attribute__((used)) static ssize_t
xs_read_kvec(struct socket *sock, struct msghdr *msg, int flags,
  struct kvec *kvec, size_t count, size_t seek)
{
 iov_iter_kvec(&msg->msg_iter, READ, kvec, 1, count);
 return xs_sock_recvmsg(sock, msg, flags, seek);
}
