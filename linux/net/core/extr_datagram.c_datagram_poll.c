
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; int sk_receive_queue; int sk_error_queue; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 int RCV_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_SELECT_ERR_QUEUE ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_SYN_SENT ;
 scalar_t__ connection_based (struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int skb_queue_empty_lockless (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;
 scalar_t__ sock_writeable (struct sock*) ;

__poll_t datagram_poll(struct file *file, struct socket *sock,
      poll_table *wait)
{
 struct sock *sk = sock->sk;
 __poll_t mask;

 sock_poll_wait(file, sock, wait);
 mask = 0;


 if (sk->sk_err || !skb_queue_empty_lockless(&sk->sk_error_queue))
  mask |= EPOLLERR |
   (sock_flag(sk, SOCK_SELECT_ERR_QUEUE) ? EPOLLPRI : 0);

 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= EPOLLRDHUP | EPOLLIN | EPOLLRDNORM;
 if (sk->sk_shutdown == SHUTDOWN_MASK)
  mask |= EPOLLHUP;


 if (!skb_queue_empty_lockless(&sk->sk_receive_queue))
  mask |= EPOLLIN | EPOLLRDNORM;


 if (connection_based(sk)) {
  if (sk->sk_state == TCP_CLOSE)
   mask |= EPOLLHUP;

  if (sk->sk_state == TCP_SYN_SENT)
   return mask;
 }


 if (sock_writeable(sk))
  mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;
 else
  sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);

 return mask;
}
