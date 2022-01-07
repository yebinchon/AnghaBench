
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int u32 ;
struct tcp_sock {unsigned int lost; unsigned int delivered; int delivered_mstamp; } ;
struct sock {int dummy; } ;
struct rate_sample {int losses; scalar_t__ is_app_limited; } ;
struct bbr {scalar_t__ mode; scalar_t__ lt_rtt_cnt; int lt_is_sampling; unsigned int lt_last_lost; unsigned int lt_last_delivered; unsigned int lt_last_stamp; scalar_t__ round_start; scalar_t__ lt_use_bw; } ;
typedef int s32 ;


 scalar_t__ BBR_PROBE_BW ;
 unsigned int BBR_SCALE ;
 int BW_UNIT ;
 unsigned int USEC_PER_MSEC ;
 int bbr_lt_bw_interval_done (struct sock*,int) ;
 scalar_t__ bbr_lt_bw_max_rtts ;
 int bbr_lt_intvl_min_rtts ;
 unsigned int bbr_lt_loss_thresh ;
 int bbr_reset_lt_bw_sampling (struct sock*) ;
 int bbr_reset_lt_bw_sampling_interval (struct sock*) ;
 int bbr_reset_probe_bw_mode (struct sock*) ;
 unsigned int div_u64 (int ,unsigned int) ;
 int do_div (int,unsigned int) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_lt_bw_sampling(struct sock *sk, const struct rate_sample *rs)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);
 u32 lost, delivered;
 u64 bw;
 u32 t;

 if (bbr->lt_use_bw) {
  if (bbr->mode == BBR_PROBE_BW && bbr->round_start &&
      ++bbr->lt_rtt_cnt >= bbr_lt_bw_max_rtts) {
   bbr_reset_lt_bw_sampling(sk);
   bbr_reset_probe_bw_mode(sk);
  }
  return;
 }





 if (!bbr->lt_is_sampling) {
  if (!rs->losses)
   return;
  bbr_reset_lt_bw_sampling_interval(sk);
  bbr->lt_is_sampling = 1;
 }


 if (rs->is_app_limited) {
  bbr_reset_lt_bw_sampling(sk);
  return;
 }

 if (bbr->round_start)
  bbr->lt_rtt_cnt++;
 if (bbr->lt_rtt_cnt < bbr_lt_intvl_min_rtts)
  return;
 if (bbr->lt_rtt_cnt > 4 * bbr_lt_intvl_min_rtts) {
  bbr_reset_lt_bw_sampling(sk);
  return;
 }





 if (!rs->losses)
  return;


 lost = tp->lost - bbr->lt_last_lost;
 delivered = tp->delivered - bbr->lt_last_delivered;

 if (!delivered || (lost << BBR_SCALE) < bbr_lt_loss_thresh * delivered)
  return;


 t = div_u64(tp->delivered_mstamp, USEC_PER_MSEC) - bbr->lt_last_stamp;
 if ((s32)t < 1)
  return;

 if (t >= ~0U / USEC_PER_MSEC) {
  bbr_reset_lt_bw_sampling(sk);
  return;
 }
 t *= USEC_PER_MSEC;
 bw = (u64)delivered * BW_UNIT;
 do_div(bw, t);
 bbr_lt_bw_interval_done(sk, bw);
}
