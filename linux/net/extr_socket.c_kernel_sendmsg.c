
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iter; } ;
struct kvec {int dummy; } ;


 int WRITE ;
 int iov_iter_kvec (int *,int ,struct kvec*,size_t,size_t) ;
 int sock_sendmsg (struct socket*,struct msghdr*) ;

int kernel_sendmsg(struct socket *sock, struct msghdr *msg,
     struct kvec *vec, size_t num, size_t size)
{
 iov_iter_kvec(&msg->msg_iter, WRITE, vec, num, size);
 return sock_sendmsg(sock, msg);
}
