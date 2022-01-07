
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int tcp_mstamp; scalar_t__ app_limited; } ;
struct sock {int dummy; } ;
struct bbr {int idle_restart; scalar_t__ mode; scalar_t__ ack_epoch_acked; int ack_epoch_mstamp; } ;
typedef enum tcp_ca_event { ____Placeholder_tcp_ca_event } tcp_ca_event ;


 scalar_t__ BBR_PROBE_BW ;
 scalar_t__ BBR_PROBE_RTT ;
 int BBR_UNIT ;
 int CA_EVENT_TX_START ;
 int bbr_bw (struct sock*) ;
 int bbr_check_probe_rtt_done (struct sock*) ;
 int bbr_set_pacing_rate (struct sock*,int ,int ) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_cwnd_event(struct sock *sk, enum tcp_ca_event event)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);

 if (event == CA_EVENT_TX_START && tp->app_limited) {
  bbr->idle_restart = 1;
  bbr->ack_epoch_mstamp = tp->tcp_mstamp;
  bbr->ack_epoch_acked = 0;



  if (bbr->mode == BBR_PROBE_BW)
   bbr_set_pacing_rate(sk, bbr_bw(sk), BBR_UNIT);
  else if (bbr->mode == BBR_PROBE_RTT)
   bbr_check_probe_rtt_done(sk);
 }
}
