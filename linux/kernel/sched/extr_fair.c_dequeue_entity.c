
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int vruntime; scalar_t__ on_rq; } ;
struct cfs_rq {scalar_t__ min_vruntime; struct sched_entity* curr; } ;


 int DEQUEUE_MOVE ;
 int DEQUEUE_SAVE ;
 int DEQUEUE_SLEEP ;
 int UPDATE_TG ;
 int __dequeue_entity (struct cfs_rq*,struct sched_entity*) ;
 int account_entity_dequeue (struct cfs_rq*,struct sched_entity*) ;
 int clear_buddies (struct cfs_rq*,struct sched_entity*) ;
 int dequeue_runnable_load_avg (struct cfs_rq*,struct sched_entity*) ;
 int return_cfs_rq_runtime (struct cfs_rq*) ;
 int update_cfs_group (struct sched_entity*) ;
 int update_curr (struct cfs_rq*) ;
 int update_load_avg (struct cfs_rq*,struct sched_entity*,int ) ;
 int update_min_vruntime (struct cfs_rq*) ;
 int update_stats_dequeue (struct cfs_rq*,struct sched_entity*,int) ;

__attribute__((used)) static void
dequeue_entity(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{



 update_curr(cfs_rq);
 update_load_avg(cfs_rq, se, UPDATE_TG);
 dequeue_runnable_load_avg(cfs_rq, se);

 update_stats_dequeue(cfs_rq, se, flags);

 clear_buddies(cfs_rq, se);

 if (se != cfs_rq->curr)
  __dequeue_entity(cfs_rq, se);
 se->on_rq = 0;
 account_entity_dequeue(cfs_rq, se);







 if (!(flags & DEQUEUE_SLEEP))
  se->vruntime -= cfs_rq->min_vruntime;


 return_cfs_rq_runtime(cfs_rq);

 update_cfs_group(se);







 if ((flags & (DEQUEUE_SAVE | DEQUEUE_MOVE)) != DEQUEUE_SAVE)
  update_min_vruntime(cfs_rq);
}
