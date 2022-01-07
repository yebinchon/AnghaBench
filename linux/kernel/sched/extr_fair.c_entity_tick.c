
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sched_entity {int dummy; } ;
struct cfs_rq {int nr_running; } ;
struct TYPE_3__ {int hrtick_timer; } ;


 int DOUBLE_TICK ;
 int UPDATE_TG ;
 int check_preempt_tick (struct cfs_rq*,struct sched_entity*) ;
 scalar_t__ hrtimer_active (int *) ;
 int resched_curr (TYPE_1__*) ;
 TYPE_1__* rq_of (struct cfs_rq*) ;
 int sched_feat (int ) ;
 int update_cfs_group (struct sched_entity*) ;
 int update_curr (struct cfs_rq*) ;
 int update_load_avg (struct cfs_rq*,struct sched_entity*,int ) ;

__attribute__((used)) static void
entity_tick(struct cfs_rq *cfs_rq, struct sched_entity *curr, int queued)
{



 update_curr(cfs_rq);




 update_load_avg(cfs_rq, curr, UPDATE_TG);
 update_cfs_group(curr);
 if (cfs_rq->nr_running > 1)
  check_preempt_tick(cfs_rq, curr);
}
