
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ snd_cwnd; int delivered; } ;
struct sock {int dummy; } ;
struct rate_sample {scalar_t__ losses; } ;
struct bbr {scalar_t__ prev_ca_state; int packet_conservation; scalar_t__ prior_cwnd; int next_rtt_delivered; } ;
struct TYPE_2__ {scalar_t__ icsk_ca_state; } ;


 scalar_t__ TCP_CA_Recovery ;
 TYPE_1__* inet_csk (struct sock*) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ max_t (int ,scalar_t__,int) ;
 int s32 ;
 scalar_t__ tcp_packets_in_flight (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static bool bbr_set_cwnd_to_recover_or_restore(
 struct sock *sk, const struct rate_sample *rs, u32 acked, u32 *new_cwnd)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);
 u8 prev_state = bbr->prev_ca_state, state = inet_csk(sk)->icsk_ca_state;
 u32 cwnd = tp->snd_cwnd;





 if (rs->losses > 0)
  cwnd = max_t(s32, cwnd - rs->losses, 1);

 if (state == TCP_CA_Recovery && prev_state != TCP_CA_Recovery) {

  bbr->packet_conservation = 1;
  bbr->next_rtt_delivered = tp->delivered;

  cwnd = tcp_packets_in_flight(tp) + acked;
 } else if (prev_state >= TCP_CA_Recovery && state < TCP_CA_Recovery) {

  cwnd = max(cwnd, bbr->prior_cwnd);
  bbr->packet_conservation = 0;
 }
 bbr->prev_ca_state = state;

 if (bbr->packet_conservation) {
  *new_cwnd = max(cwnd, tcp_packets_in_flight(tp) + acked);
  return 1;
 }
 *new_cwnd = cwnd;
 return 0;
}
