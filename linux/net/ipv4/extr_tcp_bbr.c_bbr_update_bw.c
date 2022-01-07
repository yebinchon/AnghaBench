
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tcp_sock {int delivered; } ;
struct sock {int dummy; } ;
struct rate_sample {scalar_t__ delivered; int is_app_limited; int interval_us; int prior_delivered; } ;
struct bbr {int round_start; int rtt_cnt; int bw; scalar_t__ packet_conservation; int next_rtt_delivered; } ;


 int BW_UNIT ;
 int bbr_bw_rtts ;
 int bbr_lt_bw_sampling (struct sock*,struct rate_sample const*) ;
 int bbr_max_bw (struct sock*) ;
 int before (int ,int ) ;
 int do_div (int,int ) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 int minmax_running_max (int *,int ,int ,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_update_bw(struct sock *sk, const struct rate_sample *rs)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);
 u64 bw;

 bbr->round_start = 0;
 if (rs->delivered < 0 || rs->interval_us <= 0)
  return;


 if (!before(rs->prior_delivered, bbr->next_rtt_delivered)) {
  bbr->next_rtt_delivered = tp->delivered;
  bbr->rtt_cnt++;
  bbr->round_start = 1;
  bbr->packet_conservation = 0;
 }

 bbr_lt_bw_sampling(sk, rs);





 bw = (u64)rs->delivered * BW_UNIT;
 do_div(bw, rs->interval_us);
 if (!rs->is_app_limited || bw >= bbr_max_bw(sk)) {

  minmax_running_max(&bbr->bw, bbr_bw_rtts, bbr->rtt_cnt, bw);
 }
}
