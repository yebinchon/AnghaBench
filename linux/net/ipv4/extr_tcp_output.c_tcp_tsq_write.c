
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ lost_out; scalar_t__ retrans_out; scalar_t__ snd_cwnd; int nonagle; } ;
struct sock {int sk_state; } ;


 int GFP_ATOMIC ;
 int TCPF_CLOSE_WAIT ;
 int TCPF_CLOSING ;
 int TCPF_ESTABLISHED ;
 int TCPF_FIN_WAIT1 ;
 int TCPF_LAST_ACK ;
 int tcp_current_mss (struct sock*) ;
 int tcp_mstamp_refresh (struct tcp_sock*) ;
 scalar_t__ tcp_packets_in_flight (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_write_xmit (struct sock*,int ,int ,int ,int ) ;
 int tcp_xmit_retransmit_queue (struct sock*) ;

__attribute__((used)) static void tcp_tsq_write(struct sock *sk)
{
 if ((1 << sk->sk_state) &
     (TCPF_ESTABLISHED | TCPF_FIN_WAIT1 | TCPF_CLOSING |
      TCPF_CLOSE_WAIT | TCPF_LAST_ACK)) {
  struct tcp_sock *tp = tcp_sk(sk);

  if (tp->lost_out > tp->retrans_out &&
      tp->snd_cwnd > tcp_packets_in_flight(tp)) {
   tcp_mstamp_refresh(tp);
   tcp_xmit_retransmit_queue(sk);
  }

  tcp_write_xmit(sk, tcp_current_mss(sk), tp->nonagle,
          0, GFP_ATOMIC);
 }
}
