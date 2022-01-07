
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int lock; } ;
struct cfs_rq {TYPE_1__ removed; scalar_t__ min_vruntime; scalar_t__ min_vruntime_copy; int tasks_timeline; } ;


 int RB_ROOT_CACHED ;
 int raw_spin_lock_init (int *) ;

void init_cfs_rq(struct cfs_rq *cfs_rq)
{
 cfs_rq->tasks_timeline = RB_ROOT_CACHED;
 cfs_rq->min_vruntime = (u64)(-(1LL << 20));

 cfs_rq->min_vruntime_copy = cfs_rq->min_vruntime;




}
