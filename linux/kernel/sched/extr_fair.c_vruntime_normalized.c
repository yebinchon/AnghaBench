
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int sum_exec_runtime; } ;
struct task_struct {scalar_t__ state; scalar_t__ sched_remote_wakeup; scalar_t__ on_rq; struct sched_entity se; } ;


 scalar_t__ TASK_WAKING ;

__attribute__((used)) static inline bool vruntime_normalized(struct task_struct *p)
{
 struct sched_entity *se = &p->se;






 if (p->on_rq)
  return 1;
 if (!se->sum_exec_runtime ||
     (p->state == TASK_WAKING && p->sched_remote_wakeup))
  return 1;

 return 0;
}
