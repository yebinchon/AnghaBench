
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct sched_entity {int vruntime; } ;
struct cfs_rq {unsigned long min_vruntime; } ;


 int GENTLE_FAIR_SLEEPERS ;
 int START_DEBIT ;
 int max_vruntime (int ,unsigned long) ;
 scalar_t__ sched_feat (int ) ;
 scalar_t__ sched_vslice (struct cfs_rq*,struct sched_entity*) ;
 unsigned long sysctl_sched_latency ;

__attribute__((used)) static void
place_entity(struct cfs_rq *cfs_rq, struct sched_entity *se, int initial)
{
 u64 vruntime = cfs_rq->min_vruntime;







 if (initial && sched_feat(START_DEBIT))
  vruntime += sched_vslice(cfs_rq, se);


 if (!initial) {
  unsigned long thresh = sysctl_sched_latency;





  if (sched_feat(GENTLE_FAIR_SLEEPERS))
   thresh >>= 1;

  vruntime -= thresh;
 }


 se->vruntime = max_vruntime(se->vruntime, vruntime);
}
