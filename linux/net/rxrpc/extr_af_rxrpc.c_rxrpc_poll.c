
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct rxrpc_sock {int recvmsg_q; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int list_empty (int *) ;
 struct rxrpc_sock* rxrpc_sk (struct sock*) ;
 scalar_t__ rxrpc_writable (struct sock*) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;

__attribute__((used)) static __poll_t rxrpc_poll(struct file *file, struct socket *sock,
          poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct rxrpc_sock *rx = rxrpc_sk(sk);
 __poll_t mask;

 sock_poll_wait(file, sock, wait);
 mask = 0;



 if (!list_empty(&rx->recvmsg_q))
  mask |= EPOLLIN | EPOLLRDNORM;




 if (rxrpc_writable(sk))
  mask |= EPOLLOUT | EPOLLWRNORM;

 return mask;
}
