
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct bbr {int lt_bw; int lt_use_bw; int pacing_gain; scalar_t__ lt_rtt_cnt; } ;


 int BBR_UNIT ;
 int abs (int) ;
 scalar_t__ bbr_lt_bw_diff ;
 int bbr_lt_bw_ratio ;
 scalar_t__ bbr_rate_bytes_per_sec (struct sock*,int,int) ;
 int bbr_reset_lt_bw_sampling_interval (struct sock*) ;
 struct bbr* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void bbr_lt_bw_interval_done(struct sock *sk, u32 bw)
{
 struct bbr *bbr = inet_csk_ca(sk);
 u32 diff;

 if (bbr->lt_bw) {

  diff = abs(bw - bbr->lt_bw);
  if ((diff * BBR_UNIT <= bbr_lt_bw_ratio * bbr->lt_bw) ||
      (bbr_rate_bytes_per_sec(sk, diff, BBR_UNIT) <=
       bbr_lt_bw_diff)) {

   bbr->lt_bw = (bw + bbr->lt_bw) >> 1;
   bbr->lt_use_bw = 1;
   bbr->pacing_gain = BBR_UNIT;
   bbr->lt_rtt_cnt = 0;
   return;
  }
 }
 bbr->lt_bw = bw;
 bbr_reset_lt_bw_sampling_interval(sk);
}
