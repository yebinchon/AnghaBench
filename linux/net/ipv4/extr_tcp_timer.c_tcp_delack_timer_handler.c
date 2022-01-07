
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct TYPE_2__ {int pending; int ato; int timeout; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; int icsk_rto; int icsk_delack_timer; } ;


 int ICSK_ACK_TIMER ;
 int LINUX_MIB_DELAYEDACKS ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 int TCP_ATO_MIN ;
 int __NET_INC_STATS (int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 scalar_t__ inet_csk_ack_scheduled (struct sock*) ;
 int inet_csk_exit_pingpong_mode (struct sock*) ;
 int inet_csk_in_pingpong_mode (struct sock*) ;
 int jiffies ;
 int min (int,int ) ;
 int sk_mem_reclaim (struct sock*) ;
 int sk_mem_reclaim_partial (struct sock*) ;
 int sk_reset_timer (struct sock*,int *,int ) ;
 int sock_net (struct sock*) ;
 int tcp_mstamp_refresh (int ) ;
 int tcp_send_ack (struct sock*) ;
 int tcp_sk (struct sock*) ;
 scalar_t__ tcp_under_memory_pressure (struct sock*) ;
 scalar_t__ time_after (int ,int ) ;

void tcp_delack_timer_handler(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 sk_mem_reclaim_partial(sk);

 if (((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_LISTEN)) ||
     !(icsk->icsk_ack.pending & ICSK_ACK_TIMER))
  goto out;

 if (time_after(icsk->icsk_ack.timeout, jiffies)) {
  sk_reset_timer(sk, &icsk->icsk_delack_timer, icsk->icsk_ack.timeout);
  goto out;
 }
 icsk->icsk_ack.pending &= ~ICSK_ACK_TIMER;

 if (inet_csk_ack_scheduled(sk)) {
  if (!inet_csk_in_pingpong_mode(sk)) {

   icsk->icsk_ack.ato = min(icsk->icsk_ack.ato << 1, icsk->icsk_rto);
  } else {



   inet_csk_exit_pingpong_mode(sk);
   icsk->icsk_ack.ato = TCP_ATO_MIN;
  }
  tcp_mstamp_refresh(tcp_sk(sk));
  tcp_send_ack(sk);
  __NET_INC_STATS(sock_net(sk), LINUX_MIB_DELAYEDACKS);
 }

out:
 if (tcp_under_memory_pressure(sk))
  sk_mem_reclaim(sk);
}
