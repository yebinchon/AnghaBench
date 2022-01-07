
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ policy; } ;
struct rq {int dummy; } ;


 scalar_t__ SCHED_RR ;
 unsigned int sched_rr_timeslice ;

__attribute__((used)) static unsigned int get_rr_interval_rt(struct rq *rq, struct task_struct *task)
{



 if (task->policy == SCHED_RR)
  return sched_rr_timeslice;
 else
  return 0;
}
