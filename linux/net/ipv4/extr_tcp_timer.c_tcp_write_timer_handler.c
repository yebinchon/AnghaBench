
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;
struct inet_connection_sock {int icsk_pending; int icsk_timeout; int icsk_retransmit_timer; } ;






 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int jiffies ;
 int sk_mem_reclaim (struct sock*) ;
 int sk_reset_timer (struct sock*,int *,int ) ;
 int tcp_mstamp_refresh (int ) ;
 int tcp_probe_timer (struct sock*) ;
 int tcp_rack_reo_timeout (struct sock*) ;
 int tcp_retransmit_timer (struct sock*) ;
 int tcp_send_loss_probe (struct sock*) ;
 int tcp_sk (struct sock*) ;
 scalar_t__ time_after (int ,int ) ;

void tcp_write_timer_handler(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 int event;

 if (((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_LISTEN)) ||
     !icsk->icsk_pending)
  goto out;

 if (time_after(icsk->icsk_timeout, jiffies)) {
  sk_reset_timer(sk, &icsk->icsk_retransmit_timer, icsk->icsk_timeout);
  goto out;
 }

 tcp_mstamp_refresh(tcp_sk(sk));
 event = icsk->icsk_pending;

 switch (event) {
 case 129:
  tcp_rack_reo_timeout(sk);
  break;
 case 131:
  tcp_send_loss_probe(sk);
  break;
 case 128:
  icsk->icsk_pending = 0;
  tcp_retransmit_timer(sk);
  break;
 case 130:
  icsk->icsk_pending = 0;
  tcp_probe_timer(sk);
  break;
 }

out:
 sk_mem_reclaim(sk);
}
