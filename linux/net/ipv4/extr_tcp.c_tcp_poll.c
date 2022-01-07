
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {int urg_data; int copied_seq; int urg_seq; int fastopen_rsk; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; int sk_error_queue; scalar_t__ sk_err; TYPE_1__* sk_socket; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_4__ {scalar_t__ defer_connect; } ;
struct TYPE_3__ {int flags; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int INT_MAX ;
 int RCV_SHUTDOWN ;
 scalar_t__ READ_ONCE (int ) ;
 int SEND_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int SOCK_URGINLINE ;
 int TCP_CLOSE ;
 int TCP_LISTEN ;
 int TCP_SYN_RECV ;
 int TCP_SYN_SENT ;
 int TCP_URG_VALID ;
 int inet_csk_listen_poll (struct sock*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int inet_sk_state_load (struct sock*) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int set_bit (int ,int *) ;
 int sk_set_bit (int ,struct sock*) ;
 scalar_t__ sk_stream_is_writeable (struct sock*) ;
 int skb_queue_empty_lockless (int *) ;
 int smp_mb__after_atomic () ;
 int smp_rmb () ;
 int sock_flag (struct sock*,int ) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;
 int sock_rcvlowat (struct sock*,int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_stream_is_readable (struct tcp_sock const*,int,struct sock*) ;

__poll_t tcp_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 __poll_t mask;
 struct sock *sk = sock->sk;
 const struct tcp_sock *tp = tcp_sk(sk);
 int state;

 sock_poll_wait(file, sock, wait);

 state = inet_sk_state_load(sk);
 if (state == TCP_LISTEN)
  return inet_csk_listen_poll(sk);






 mask = 0;
 if (sk->sk_shutdown == SHUTDOWN_MASK || state == TCP_CLOSE)
  mask |= EPOLLHUP;
 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= EPOLLIN | EPOLLRDNORM | EPOLLRDHUP;


 if (state != TCP_SYN_SENT &&
     (state != TCP_SYN_RECV || rcu_access_pointer(tp->fastopen_rsk))) {
  int target = sock_rcvlowat(sk, 0, INT_MAX);

  if (READ_ONCE(tp->urg_seq) == READ_ONCE(tp->copied_seq) &&
      !sock_flag(sk, SOCK_URGINLINE) &&
      tp->urg_data)
   target++;

  if (tcp_stream_is_readable(tp, target, sk))
   mask |= EPOLLIN | EPOLLRDNORM;

  if (!(sk->sk_shutdown & SEND_SHUTDOWN)) {
   if (sk_stream_is_writeable(sk)) {
    mask |= EPOLLOUT | EPOLLWRNORM;
   } else {
    sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);
    set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);






    smp_mb__after_atomic();
    if (sk_stream_is_writeable(sk))
     mask |= EPOLLOUT | EPOLLWRNORM;
   }
  } else
   mask |= EPOLLOUT | EPOLLWRNORM;

  if (tp->urg_data & TCP_URG_VALID)
   mask |= EPOLLPRI;
 } else if (state == TCP_SYN_SENT && inet_sk(sk)->defer_connect) {




  mask |= EPOLLOUT | EPOLLWRNORM;
 }

 smp_rmb();
 if (sk->sk_err || !skb_queue_empty_lockless(&sk->sk_error_queue))
  mask |= EPOLLERR;

 return mask;
}
