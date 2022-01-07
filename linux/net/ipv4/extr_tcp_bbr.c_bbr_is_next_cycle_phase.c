
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {int delivered_mstamp; } ;
struct sock {int dummy; } ;
struct rate_sample {scalar_t__ losses; int prior_in_flight; } ;
struct bbr {scalar_t__ min_rtt_us; scalar_t__ pacing_gain; int cycle_mstamp; } ;


 scalar_t__ BBR_UNIT ;
 scalar_t__ bbr_inflight (struct sock*,scalar_t__,scalar_t__) ;
 scalar_t__ bbr_max_bw (struct sock*) ;
 scalar_t__ bbr_packets_in_net_at_edt (struct sock*,int ) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_stamp_us_delta (int ,int ) ;

__attribute__((used)) static bool bbr_is_next_cycle_phase(struct sock *sk,
        const struct rate_sample *rs)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);
 bool is_full_length =
  tcp_stamp_us_delta(tp->delivered_mstamp, bbr->cycle_mstamp) >
  bbr->min_rtt_us;
 u32 inflight, bw;




 if (bbr->pacing_gain == BBR_UNIT)
  return is_full_length;

 inflight = bbr_packets_in_net_at_edt(sk, rs->prior_in_flight);
 bw = bbr_max_bw(sk);






 if (bbr->pacing_gain > BBR_UNIT)
  return is_full_length &&
   (rs->losses ||
    inflight >= bbr_inflight(sk, bw, bbr->pacing_gain));





 return is_full_length ||
  inflight <= bbr_inflight(sk, bw, BBR_UNIT);
}
