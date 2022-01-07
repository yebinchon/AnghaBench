
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {unsigned long sk_tsq_flags; } ;
struct TYPE_4__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_3__ {int (* mtu_reduced ) (struct sock*) ;} ;


 unsigned long TCPF_DELACK_TIMER_DEFERRED ;
 unsigned long TCPF_MTU_REDUCED_DEFERRED ;
 unsigned long TCPF_TSQ_DEFERRED ;
 unsigned long TCPF_WRITE_TIMER_DEFERRED ;
 unsigned long TCP_DEFERRED_ALL ;
 int __sock_put (struct sock*) ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 TYPE_2__* inet_csk (struct sock*) ;
 int sock_release_ownership (struct sock*) ;
 int stub1 (struct sock*) ;
 int tcp_delack_timer_handler (struct sock*) ;
 int tcp_tsq_write (struct sock*) ;
 int tcp_write_timer_handler (struct sock*) ;

void tcp_release_cb(struct sock *sk)
{
 unsigned long flags, nflags;


 do {
  flags = sk->sk_tsq_flags;
  if (!(flags & TCP_DEFERRED_ALL))
   return;
  nflags = flags & ~TCP_DEFERRED_ALL;
 } while (cmpxchg(&sk->sk_tsq_flags, flags, nflags) != flags);

 if (flags & TCPF_TSQ_DEFERRED) {
  tcp_tsq_write(sk);
  __sock_put(sk);
 }
 sock_release_ownership(sk);

 if (flags & TCPF_WRITE_TIMER_DEFERRED) {
  tcp_write_timer_handler(sk);
  __sock_put(sk);
 }
 if (flags & TCPF_DELACK_TIMER_DEFERRED) {
  tcp_delack_timer_handler(sk);
  __sock_put(sk);
 }
 if (flags & TCPF_MTU_REDUCED_DEFERRED) {
  inet_csk(sk)->icsk_af_ops->mtu_reduced(sk);
  __sock_put(sk);
 }
}
