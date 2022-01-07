
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {scalar_t__ on_rq; } ;
struct cfs_rq {int * curr; } ;


 int __enqueue_entity (struct cfs_rq*,struct sched_entity*) ;
 int check_cfs_rq_runtime (struct cfs_rq*) ;
 int check_spread (struct cfs_rq*,struct sched_entity*) ;
 int update_curr (struct cfs_rq*) ;
 int update_load_avg (struct cfs_rq*,struct sched_entity*,int ) ;
 int update_stats_wait_start (struct cfs_rq*,struct sched_entity*) ;

__attribute__((used)) static void put_prev_entity(struct cfs_rq *cfs_rq, struct sched_entity *prev)
{




 if (prev->on_rq)
  update_curr(cfs_rq);


 check_cfs_rq_runtime(cfs_rq);

 check_spread(cfs_rq, prev);

 if (prev->on_rq) {
  update_stats_wait_start(cfs_rq, prev);

  __enqueue_entity(cfs_rq, prev);

  update_load_avg(cfs_rq, prev, 0);
 }
 cfs_rq->curr = ((void*)0);
}
