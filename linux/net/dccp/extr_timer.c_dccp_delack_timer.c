
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct TYPE_4__ {int blocked; int pending; int ato; scalar_t__ timeout; } ;
struct TYPE_3__ {struct sock sk; } ;
struct inet_connection_sock {TYPE_2__ icsk_ack; int icsk_rto; int icsk_delack_timer; TYPE_1__ icsk_inet; } ;


 scalar_t__ DCCP_CLOSED ;
 int ICSK_ACK_TIMER ;
 int LINUX_MIB_DELAYEDACKLOCKED ;
 int LINUX_MIB_DELAYEDACKS ;
 int TCP_ATO_MIN ;
 scalar_t__ TCP_DELACK_MIN ;
 int __NET_INC_STATS (int ,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int dccp_send_ack (struct sock*) ;
 struct inet_connection_sock* from_timer (int ,struct timer_list*,int ) ;
 struct inet_connection_sock* icsk ;
 int icsk_delack_timer ;
 scalar_t__ inet_csk_ack_scheduled (struct sock*) ;
 int inet_csk_exit_pingpong_mode (struct sock*) ;
 int inet_csk_in_pingpong_mode (struct sock*) ;
 scalar_t__ jiffies ;
 int min (int,int ) ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 int sock_net (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void dccp_delack_timer(struct timer_list *t)
{
 struct inet_connection_sock *icsk =
   from_timer(icsk, t, icsk_delack_timer);
 struct sock *sk = &icsk->icsk_inet.sk;

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk)) {

  icsk->icsk_ack.blocked = 1;
  __NET_INC_STATS(sock_net(sk), LINUX_MIB_DELAYEDACKLOCKED);
  sk_reset_timer(sk, &icsk->icsk_delack_timer,
          jiffies + TCP_DELACK_MIN);
  goto out;
 }

 if (sk->sk_state == DCCP_CLOSED ||
     !(icsk->icsk_ack.pending & ICSK_ACK_TIMER))
  goto out;
 if (time_after(icsk->icsk_ack.timeout, jiffies)) {
  sk_reset_timer(sk, &icsk->icsk_delack_timer,
          icsk->icsk_ack.timeout);
  goto out;
 }

 icsk->icsk_ack.pending &= ~ICSK_ACK_TIMER;

 if (inet_csk_ack_scheduled(sk)) {
  if (!inet_csk_in_pingpong_mode(sk)) {

   icsk->icsk_ack.ato = min(icsk->icsk_ack.ato << 1,
       icsk->icsk_rto);
  } else {



   inet_csk_exit_pingpong_mode(sk);
   icsk->icsk_ack.ato = TCP_ATO_MIN;
  }
  dccp_send_ack(sk);
  __NET_INC_STATS(sock_net(sk), LINUX_MIB_DELAYEDACKS);
 }
out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
