
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_rq {int bw_ratio; int extra_bw; } ;


 int BW_SHIFT ;
 int RATIO_SHIFT ;
 scalar_t__ RUNTIME_INF ;
 scalar_t__ global_rt_period () ;
 scalar_t__ global_rt_runtime () ;
 int to_ratio (scalar_t__,scalar_t__) ;

void init_dl_rq_bw_ratio(struct dl_rq *dl_rq)
{
 if (global_rt_runtime() == RUNTIME_INF) {
  dl_rq->bw_ratio = 1 << RATIO_SHIFT;
  dl_rq->extra_bw = 1 << BW_SHIFT;
 } else {
  dl_rq->bw_ratio = to_ratio(global_rt_runtime(),
     global_rt_period()) >> (BW_SHIFT - RATIO_SHIFT);
  dl_rq->extra_bw = to_ratio(global_rt_period(),
          global_rt_runtime());
 }
}
