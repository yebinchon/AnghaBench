
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sock {int sk_tsq_flags; } ;
struct TYPE_2__ {struct sock sk; } ;
struct inet_connection_sock {TYPE_1__ icsk_inet; } ;


 int TCP_WRITE_TIMER_DEFERRED ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct inet_connection_sock* from_timer (int ,struct timer_list*,int ) ;
 struct inet_connection_sock* icsk ;
 int icsk_retransmit_timer ;
 int sock_hold (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int tcp_write_timer_handler (struct sock*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void tcp_write_timer(struct timer_list *t)
{
 struct inet_connection_sock *icsk =
   from_timer(icsk, t, icsk_retransmit_timer);
 struct sock *sk = &icsk->icsk_inet.sk;

 bh_lock_sock(sk);
 if (!sock_owned_by_user(sk)) {
  tcp_write_timer_handler(sk);
 } else {

  if (!test_and_set_bit(TCP_WRITE_TIMER_DEFERRED, &sk->sk_tsq_flags))
   sock_hold(sk);
 }
 bh_unlock_sock(sk);
 sock_put(sk);
}
