
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int period_contrib; int load_sum; int runnable_load_sum; void* runnable_load_avg; void* load_avg; } ;
struct sched_entity {unsigned long runnable_weight; scalar_t__ on_rq; TYPE_1__ avg; int load; } ;
struct cfs_rq {struct sched_entity* curr; } ;


 int LOAD_AVG_MAX ;
 int account_entity_dequeue (struct cfs_rq*,struct sched_entity*) ;
 int account_entity_enqueue (struct cfs_rq*,struct sched_entity*) ;
 int dequeue_load_avg (struct cfs_rq*,struct sched_entity*) ;
 int dequeue_runnable_load_avg (struct cfs_rq*,struct sched_entity*) ;
 void* div_u64 (int,int) ;
 int enqueue_load_avg (struct cfs_rq*,struct sched_entity*) ;
 int enqueue_runnable_load_avg (struct cfs_rq*,struct sched_entity*) ;
 int se_runnable (struct sched_entity*) ;
 int se_weight (struct sched_entity*) ;
 int update_curr (struct cfs_rq*) ;
 int update_load_set (int *,unsigned long) ;

__attribute__((used)) static void reweight_entity(struct cfs_rq *cfs_rq, struct sched_entity *se,
       unsigned long weight, unsigned long runnable)
{
 if (se->on_rq) {

  if (cfs_rq->curr == se)
   update_curr(cfs_rq);
  account_entity_dequeue(cfs_rq, se);
  dequeue_runnable_load_avg(cfs_rq, se);
 }
 dequeue_load_avg(cfs_rq, se);

 se->runnable_weight = runnable;
 update_load_set(&se->load, weight);
 enqueue_load_avg(cfs_rq, se);
 if (se->on_rq) {
  account_entity_enqueue(cfs_rq, se);
  enqueue_runnable_load_avg(cfs_rq, se);
 }
}
