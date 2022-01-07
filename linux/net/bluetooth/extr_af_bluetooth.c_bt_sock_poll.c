
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; int sk_receive_queue; int sk_error_queue; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ BT_CLOSED ;
 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECT ;
 scalar_t__ BT_CONNECT2 ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 scalar_t__ BT_LISTEN ;
 int BT_SK_SUSPEND ;
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
 int bt_accept_poll (struct sock*) ;
 TYPE_1__* bt_sk (struct sock*) ;
 int poll_wait (struct file*,int ,int *) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 int skb_queue_empty_lockless (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 scalar_t__ sock_writeable (struct sock*) ;
 int test_bit (int ,int *) ;

__poll_t bt_sock_poll(struct file *file, struct socket *sock,
     poll_table *wait)
{
 struct sock *sk = sock->sk;
 __poll_t mask = 0;

 BT_DBG("sock %p, sk %p", sock, sk);

 poll_wait(file, sk_sleep(sk), wait);

 if (sk->sk_state == BT_LISTEN)
  return bt_accept_poll(sk);

 if (sk->sk_err || !skb_queue_empty_lockless(&sk->sk_error_queue))
  mask |= EPOLLERR |
   (sock_flag(sk, SOCK_SELECT_ERR_QUEUE) ? EPOLLPRI : 0);

 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= EPOLLRDHUP | EPOLLIN | EPOLLRDNORM;

 if (sk->sk_shutdown == SHUTDOWN_MASK)
  mask |= EPOLLHUP;

 if (!skb_queue_empty_lockless(&sk->sk_receive_queue))
  mask |= EPOLLIN | EPOLLRDNORM;

 if (sk->sk_state == BT_CLOSED)
  mask |= EPOLLHUP;

 if (sk->sk_state == BT_CONNECT ||
   sk->sk_state == BT_CONNECT2 ||
   sk->sk_state == BT_CONFIG)
  return mask;

 if (!test_bit(BT_SK_SUSPEND, &bt_sk(sk)->flags) && sock_writeable(sk))
  mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;
 else
  sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);

 return mask;
}
