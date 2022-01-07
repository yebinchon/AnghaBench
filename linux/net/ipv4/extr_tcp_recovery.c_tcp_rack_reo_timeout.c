
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ icsk_ca_state; scalar_t__ icsk_pending; TYPE_1__* icsk_ca_ops; } ;
struct TYPE_3__ {int cong_control; } ;


 scalar_t__ ICSK_TIME_RETRANS ;
 scalar_t__ TCP_CA_Recovery ;
 TYPE_2__* inet_csk (struct sock*) ;
 int tcp_cwnd_reduction (struct sock*,int,int ) ;
 int tcp_enter_recovery (struct sock*,int) ;
 scalar_t__ tcp_packets_in_flight (struct tcp_sock*) ;
 int tcp_rack_detect_loss (struct sock*,scalar_t__*) ;
 int tcp_rearm_rto (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_xmit_retransmit_queue (struct sock*) ;

void tcp_rack_reo_timeout(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 timeout, prior_inflight;

 prior_inflight = tcp_packets_in_flight(tp);
 tcp_rack_detect_loss(sk, &timeout);
 if (prior_inflight != tcp_packets_in_flight(tp)) {
  if (inet_csk(sk)->icsk_ca_state != TCP_CA_Recovery) {
   tcp_enter_recovery(sk, 0);
   if (!inet_csk(sk)->icsk_ca_ops->cong_control)
    tcp_cwnd_reduction(sk, 1, 0);
  }
  tcp_xmit_retransmit_queue(sk);
 }
 if (inet_csk(sk)->icsk_pending != ICSK_TIME_RETRANS)
  tcp_rearm_rto(sk);
}
