
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iter; } ;
struct kvec {int iov_len; } ;


 int WRITE ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,int ) ;
 int xs_sendmsg (struct socket*,struct msghdr*,size_t) ;

__attribute__((used)) static int xs_send_kvec(struct socket *sock, struct msghdr *msg, struct kvec *vec, size_t seek)
{
 iov_iter_kvec(&msg->msg_iter, WRITE, vec, 1, vec->iov_len);
 return xs_sendmsg(sock, msg, seek);
}
