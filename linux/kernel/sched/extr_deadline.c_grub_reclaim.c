
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sched_dl_entity {scalar_t__ dl_bw; } ;
struct TYPE_2__ {scalar_t__ this_bw; scalar_t__ running_bw; scalar_t__ bw_ratio; scalar_t__ extra_bw; } ;
struct rq {TYPE_1__ dl; } ;


 scalar_t__ BW_SHIFT ;
 scalar_t__ BW_UNIT ;
 scalar_t__ RATIO_SHIFT ;

__attribute__((used)) static u64 grub_reclaim(u64 delta, struct rq *rq, struct sched_dl_entity *dl_se)
{
 u64 u_inact = rq->dl.this_bw - rq->dl.running_bw;
 u64 u_act;
 u64 u_act_min = (dl_se->dl_bw * rq->dl.bw_ratio) >> RATIO_SHIFT;
 if (u_inact + rq->dl.extra_bw > BW_UNIT - u_act_min)
  u_act = u_act_min;
 else
  u_act = BW_UNIT - u_inact - rq->dl.extra_bw;

 return (delta * u_act) >> BW_SHIFT;
}
