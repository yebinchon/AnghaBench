
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct sock {struct socket* sk_socket; } ;
struct msghdr {int msg_iter; } ;
struct kvec {int dummy; } ;
struct TYPE_2__ {int (* sendmsg_locked ) (struct sock*,struct msghdr*,int ) ;} ;


 int WRITE ;
 int iov_iter_kvec (int *,int ,struct kvec*,size_t,size_t) ;
 int msg_data_left (struct msghdr*) ;
 int sock_no_sendmsg_locked (struct sock*,struct msghdr*,size_t) ;
 int stub1 (struct sock*,struct msghdr*,int ) ;

int kernel_sendmsg_locked(struct sock *sk, struct msghdr *msg,
     struct kvec *vec, size_t num, size_t size)
{
 struct socket *sock = sk->sk_socket;

 if (!sock->ops->sendmsg_locked)
  return sock_no_sendmsg_locked(sk, msg, size);

 iov_iter_kvec(&msg->msg_iter, WRITE, vec, num, size);

 return sock->ops->sendmsg_locked(sk, msg, msg_data_left(msg));
}
