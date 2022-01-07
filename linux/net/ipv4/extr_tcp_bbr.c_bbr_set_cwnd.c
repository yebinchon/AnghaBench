
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ snd_cwnd; scalar_t__ delivered; scalar_t__ snd_cwnd_clamp; } ;
struct sock {int dummy; } ;
struct rate_sample {int dummy; } ;
struct bbr {scalar_t__ mode; } ;


 scalar_t__ BBR_PROBE_RTT ;
 scalar_t__ TCP_INIT_CWND ;
 scalar_t__ bbr_ack_aggregation_cwnd (struct sock*) ;
 scalar_t__ bbr_bdp (struct sock*,scalar_t__,int) ;
 scalar_t__ bbr_cwnd_min_target ;
 scalar_t__ bbr_full_bw_reached (struct sock*) ;
 scalar_t__ bbr_quantization_budget (struct sock*,scalar_t__) ;
 scalar_t__ bbr_set_cwnd_to_recover_or_restore (struct sock*,struct rate_sample const*,scalar_t__,scalar_t__*) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_set_cwnd(struct sock *sk, const struct rate_sample *rs,
    u32 acked, u32 bw, int gain)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);
 u32 cwnd = tp->snd_cwnd, target_cwnd = 0;

 if (!acked)
  goto done;

 if (bbr_set_cwnd_to_recover_or_restore(sk, rs, acked, &cwnd))
  goto done;

 target_cwnd = bbr_bdp(sk, bw, gain);




 target_cwnd += bbr_ack_aggregation_cwnd(sk);
 target_cwnd = bbr_quantization_budget(sk, target_cwnd);


 if (bbr_full_bw_reached(sk))
  cwnd = min(cwnd + acked, target_cwnd);
 else if (cwnd < target_cwnd || tp->delivered < TCP_INIT_CWND)
  cwnd = cwnd + acked;
 cwnd = max(cwnd, bbr_cwnd_min_target);

done:
 tp->snd_cwnd = min(cwnd, tp->snd_cwnd_clamp);
 if (bbr->mode == BBR_PROBE_RTT)
  tp->snd_cwnd = min(tp->snd_cwnd, bbr_cwnd_min_target);
}
