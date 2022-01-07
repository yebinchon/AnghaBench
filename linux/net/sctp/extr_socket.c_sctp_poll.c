
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; int sk_receive_queue; int sk_error_queue; scalar_t__ sk_err; } ;
struct sctp_sock {TYPE_1__* ep; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int asocs; } ;


 int CLOSED ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int LISTENING ;
 int RCV_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_SELECT_ERR_QUEUE ;
 int TCP ;
 int UDP ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int ,int *) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 scalar_t__ sctp_sstate (struct sock*,int ) ;
 scalar_t__ sctp_style (struct sock*,int ) ;
 scalar_t__ sctp_writeable (struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 int skb_queue_empty_lockless (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_rps_record_flow (struct sock*) ;

__poll_t sctp_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct sctp_sock *sp = sctp_sk(sk);
 __poll_t mask;

 poll_wait(file, sk_sleep(sk), wait);

 sock_rps_record_flow(sk);




 if (sctp_style(sk, TCP) && sctp_sstate(sk, LISTENING))
  return (!list_empty(&sp->ep->asocs)) ?
   (EPOLLIN | EPOLLRDNORM) : 0;

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


 if (!sctp_style(sk, UDP) && sctp_sstate(sk, CLOSED))
  return mask;


 if (sctp_writeable(sk)) {
  mask |= EPOLLOUT | EPOLLWRNORM;
 } else {
  sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);
  if (sctp_writeable(sk))
   mask |= EPOLLOUT | EPOLLWRNORM;
 }
 return mask;
}
