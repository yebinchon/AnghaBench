
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bbr_bw_lo; int bbr_bw_hi; int bbr_cwnd_gain; int bbr_pacing_gain; int bbr_min_rtt; } ;
union tcp_cc_info {TYPE_1__ bbr; } ;
typedef int u64 ;
typedef int u32 ;
struct tcp_sock {int mss_cache; } ;
struct sock {int dummy; } ;
struct bbr {int cwnd_gain; int pacing_gain; int min_rtt_us; } ;


 int BW_SCALE ;
 int INET_DIAG_BBRINFO ;
 int INET_DIAG_VEGASINFO ;
 int USEC_PER_SEC ;
 int bbr_bw (struct sock*) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 int memset (TYPE_1__*,int ,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static size_t bbr_get_info(struct sock *sk, u32 ext, int *attr,
      union tcp_cc_info *info)
{
 if (ext & (1 << (INET_DIAG_BBRINFO - 1)) ||
     ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
  struct tcp_sock *tp = tcp_sk(sk);
  struct bbr *bbr = inet_csk_ca(sk);
  u64 bw = bbr_bw(sk);

  bw = bw * tp->mss_cache * USEC_PER_SEC >> BW_SCALE;
  memset(&info->bbr, 0, sizeof(info->bbr));
  info->bbr.bbr_bw_lo = (u32)bw;
  info->bbr.bbr_bw_hi = (u32)(bw >> 32);
  info->bbr.bbr_min_rtt = bbr->min_rtt_us;
  info->bbr.bbr_pacing_gain = bbr->pacing_gain;
  info->bbr.bbr_cwnd_gain = bbr->cwnd_gain;
  *attr = INET_DIAG_BBRINFO;
  return sizeof(info->bbr);
 }
 return 0;
}
