
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sched_entity {int dummy; } ;
struct task_struct {struct sched_entity se; } ;
struct TYPE_3__ {scalar_t__ weight; } ;
struct TYPE_4__ {TYPE_1__ load; } ;
struct rq {TYPE_2__ cfs; } ;


 unsigned int NS_TO_JIFFIES (int ) ;
 int cfs_rq_of (struct sched_entity*) ;
 int sched_slice (int ,struct sched_entity*) ;

__attribute__((used)) static unsigned int get_rr_interval_fair(struct rq *rq, struct task_struct *task)
{
 struct sched_entity *se = &task->se;
 unsigned int rr_interval = 0;





 if (rq->cfs.load.weight)
  rr_interval = NS_TO_JIFFIES(sched_slice(cfs_rq_of(se), se));

 return rr_interval;
}
