
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int on_rq; int vruntime; } ;
struct cfs_rq {int nr_running; scalar_t__ min_vruntime; struct sched_entity* curr; } ;


 int DO_ATTACH ;
 int ENQUEUE_MIGRATED ;
 int ENQUEUE_WAKEUP ;
 int UPDATE_TG ;
 int __enqueue_entity (struct cfs_rq*,struct sched_entity*) ;
 int account_entity_enqueue (struct cfs_rq*,struct sched_entity*) ;
 int check_enqueue_throttle (struct cfs_rq*) ;
 int check_schedstat_required () ;
 int check_spread (struct cfs_rq*,struct sched_entity*) ;
 int enqueue_runnable_load_avg (struct cfs_rq*,struct sched_entity*) ;
 int list_add_leaf_cfs_rq (struct cfs_rq*) ;
 int place_entity (struct cfs_rq*,struct sched_entity*,int ) ;
 int update_cfs_group (struct sched_entity*) ;
 int update_curr (struct cfs_rq*) ;
 int update_load_avg (struct cfs_rq*,struct sched_entity*,int) ;
 int update_stats_enqueue (struct cfs_rq*,struct sched_entity*,int) ;

__attribute__((used)) static void
enqueue_entity(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{
 bool renorm = !(flags & ENQUEUE_WAKEUP) || (flags & ENQUEUE_MIGRATED);
 bool curr = cfs_rq->curr == se;





 if (renorm && curr)
  se->vruntime += cfs_rq->min_vruntime;

 update_curr(cfs_rq);







 if (renorm && !curr)
  se->vruntime += cfs_rq->min_vruntime;
 update_load_avg(cfs_rq, se, UPDATE_TG | DO_ATTACH);
 update_cfs_group(se);
 enqueue_runnable_load_avg(cfs_rq, se);
 account_entity_enqueue(cfs_rq, se);

 if (flags & ENQUEUE_WAKEUP)
  place_entity(cfs_rq, se, 0);

 check_schedstat_required();
 update_stats_enqueue(cfs_rq, se, flags);
 check_spread(cfs_rq, se);
 if (!curr)
  __enqueue_entity(cfs_rq, se);
 se->on_rq = 1;

 if (cfs_rq->nr_running == 1) {
  list_add_leaf_cfs_rq(cfs_rq);
  check_enqueue_throttle(cfs_rq);
 }
}
