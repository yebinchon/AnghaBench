
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct bictcp {scalar_t__ ack_cnt; scalar_t__ last_cwnd; scalar_t__ last_time; scalar_t__ epoch_start; scalar_t__ tcp_cwnd; scalar_t__ last_max_cwnd; int bic_K; scalar_t__ bic_origin_point; int delay_min; int cnt; } ;
typedef int s32 ;


 int BICTCP_HZ ;
 int HZ ;
 scalar_t__ beta_scale ;
 scalar_t__ cube_factor ;
 int cube_rtt_scale ;
 int cubic_root (scalar_t__) ;
 int do_div (int,int) ;
 scalar_t__ max (scalar_t__,unsigned int) ;
 scalar_t__ msecs_to_jiffies (int) ;
 scalar_t__ tcp_friendliness ;
 scalar_t__ tcp_jiffies32 ;

__attribute__((used)) static inline void bictcp_update(struct bictcp *ca, u32 cwnd, u32 acked)
{
 u32 delta, bic_target, max_cnt;
 u64 offs, t;

 ca->ack_cnt += acked;

 if (ca->last_cwnd == cwnd &&
     (s32)(tcp_jiffies32 - ca->last_time) <= HZ / 32)
  return;





 if (ca->epoch_start && tcp_jiffies32 == ca->last_time)
  goto tcp_friendliness;

 ca->last_cwnd = cwnd;
 ca->last_time = tcp_jiffies32;

 if (ca->epoch_start == 0) {
  ca->epoch_start = tcp_jiffies32;
  ca->ack_cnt = acked;
  ca->tcp_cwnd = cwnd;

  if (ca->last_max_cwnd <= cwnd) {
   ca->bic_K = 0;
   ca->bic_origin_point = cwnd;
  } else {



   ca->bic_K = cubic_root(cube_factor
            * (ca->last_max_cwnd - cwnd));
   ca->bic_origin_point = ca->last_max_cwnd;
  }
 }
 t = (s32)(tcp_jiffies32 - ca->epoch_start);
 t += msecs_to_jiffies(ca->delay_min >> 3);

 t <<= BICTCP_HZ;
 do_div(t, HZ);

 if (t < ca->bic_K)
  offs = ca->bic_K - t;
 else
  offs = t - ca->bic_K;


 delta = (cube_rtt_scale * offs * offs * offs) >> (10+3*BICTCP_HZ);
 if (t < ca->bic_K)
  bic_target = ca->bic_origin_point - delta;
 else
  bic_target = ca->bic_origin_point + delta;


 if (bic_target > cwnd) {
  ca->cnt = cwnd / (bic_target - cwnd);
 } else {
  ca->cnt = 100 * cwnd;
 }





 if (ca->last_max_cwnd == 0 && ca->cnt > 20)
  ca->cnt = 20;

tcp_friendliness:

 if (tcp_friendliness) {
  u32 scale = beta_scale;

  delta = (cwnd * scale) >> 3;
  while (ca->ack_cnt > delta) {
   ca->ack_cnt -= delta;
   ca->tcp_cwnd++;
  }

  if (ca->tcp_cwnd > cwnd) {
   delta = ca->tcp_cwnd - cwnd;
   max_cnt = cwnd / delta;
   if (ca->cnt > max_cnt)
    ca->cnt = max_cnt;
  }
 }




 ca->cnt = max(ca->cnt, 2U);
}
