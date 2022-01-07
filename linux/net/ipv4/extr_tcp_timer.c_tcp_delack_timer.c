
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sock {int sk_tsq_flags; } ;
struct TYPE_4__ {int blocked; } ;
struct TYPE_3__ {struct sock sk; } ;
struct inet_connection_sock {TYPE_2__ icsk_ack; TYPE_1__ icsk_inet; } ;


 int LINUX_MIB_DELAYEDACKLOCKED ;
 int TCP_DELACK_TIMER_DEFERRED ;
 int __NET_INC_STATS (int ,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct inet_connection_sock* from_timer (int ,struct timer_list*,int ) ;
 struct inet_connection_sock* icsk ;
 int icsk_delack_timer ;
 int sock_hold (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int tcp_delack_timer_handler (struct sock*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void tcp_delack_timer(struct timer_list *t)
{
 struct inet_connection_sock *icsk =
   from_timer(icsk, t, icsk_delack_timer);
 struct sock *sk = &icsk->icsk_inet.sk;

 bh_lock_sock(sk);
 if (!sock_owned_by_user(sk)) {
  tcp_delack_timer_handler(sk);
 } else {
  icsk->icsk_ack.blocked = 1;
  __NET_INC_STATS(sock_net(sk), LINUX_MIB_DELAYEDACKLOCKED);

  if (!test_and_set_bit(TCP_DELACK_TIMER_DEFERRED, &sk->sk_tsq_flags))
   sock_hold(sk);
 }
 bh_unlock_sock(sk);
 sock_put(sk);
}
