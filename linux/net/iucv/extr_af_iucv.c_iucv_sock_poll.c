
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; int sk_receive_queue; int sk_error_queue; scalar_t__ sk_err; } ;
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
 scalar_t__ IUCV_CLOSED ;
 scalar_t__ IUCV_DISCONN ;
 scalar_t__ IUCV_LISTEN ;
 int RCV_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_SELECT_ERR_QUEUE ;
 int iucv_accept_poll (struct sock*) ;
 scalar_t__ iucv_below_msglim (struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int skb_queue_empty (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;
 scalar_t__ sock_writeable (struct sock*) ;

__poll_t iucv_sock_poll(struct file *file, struct socket *sock,
       poll_table *wait)
{
 struct sock *sk = sock->sk;
 __poll_t mask = 0;

 sock_poll_wait(file, sock, wait);

 if (sk->sk_state == IUCV_LISTEN)
  return iucv_accept_poll(sk);

 if (sk->sk_err || !skb_queue_empty(&sk->sk_error_queue))
  mask |= EPOLLERR |
   (sock_flag(sk, SOCK_SELECT_ERR_QUEUE) ? EPOLLPRI : 0);

 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= EPOLLRDHUP;

 if (sk->sk_shutdown == SHUTDOWN_MASK)
  mask |= EPOLLHUP;

 if (!skb_queue_empty(&sk->sk_receive_queue) ||
     (sk->sk_shutdown & RCV_SHUTDOWN))
  mask |= EPOLLIN | EPOLLRDNORM;

 if (sk->sk_state == IUCV_CLOSED)
  mask |= EPOLLHUP;

 if (sk->sk_state == IUCV_DISCONN)
  mask |= EPOLLIN;

 if (sock_writeable(sk) && iucv_below_msglim(sk))
  mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;
 else
  sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);

 return mask;
}
