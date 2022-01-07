
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int pushable_dl_tasks; int pushable_tasks; scalar_t__ on_cpu; int sched_info; int pi_lock; TYPE_1__* sched_class; int se; int prio; scalar_t__ sched_reset_on_fork; int normal_prio; void* static_prio; scalar_t__ rt_priority; int policy; int state; } ;
struct TYPE_5__ {int normal_prio; } ;
struct TYPE_4__ {int (* task_fork ) (struct task_struct*) ;} ;


 int EAGAIN ;
 int MAX_PRIO ;
 void* NICE_TO_PRIO (int ) ;
 scalar_t__ PRIO_TO_NICE (void*) ;
 int RB_CLEAR_NODE (int *) ;
 int SCHED_NORMAL ;
 int TASK_NEW ;
 int __normal_prio (struct task_struct*) ;
 int __sched_fork (unsigned long,struct task_struct*) ;
 int __set_task_cpu (struct task_struct*,int ) ;
 TYPE_3__* current ;
 scalar_t__ dl_prio (int ) ;
 TYPE_1__ fair_sched_class ;
 int init_entity_runnable_average (int *) ;
 int init_task_preempt_count (struct task_struct*) ;
 scalar_t__ likely (int ) ;
 int memset (int *,int ,int) ;
 int plist_node_init (int *,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ rt_prio (int ) ;
 TYPE_1__ rt_sched_class ;
 int sched_info_on () ;
 int set_load_weight (struct task_struct*,int) ;
 int smp_processor_id () ;
 int stub1 (struct task_struct*) ;
 scalar_t__ task_has_dl_policy (struct task_struct*) ;
 scalar_t__ task_has_rt_policy (struct task_struct*) ;
 int uclamp_fork (struct task_struct*) ;
 scalar_t__ unlikely (scalar_t__) ;

int sched_fork(unsigned long clone_flags, struct task_struct *p)
{
 unsigned long flags;

 __sched_fork(clone_flags, p);





 p->state = TASK_NEW;




 p->prio = current->normal_prio;

 uclamp_fork(p);




 if (unlikely(p->sched_reset_on_fork)) {
  if (task_has_dl_policy(p) || task_has_rt_policy(p)) {
   p->policy = SCHED_NORMAL;
   p->static_prio = NICE_TO_PRIO(0);
   p->rt_priority = 0;
  } else if (PRIO_TO_NICE(p->static_prio) < 0)
   p->static_prio = NICE_TO_PRIO(0);

  p->prio = p->normal_prio = __normal_prio(p);
  set_load_weight(p, 0);





  p->sched_reset_on_fork = 0;
 }

 if (dl_prio(p->prio))
  return -EAGAIN;
 else if (rt_prio(p->prio))
  p->sched_class = &rt_sched_class;
 else
  p->sched_class = &fair_sched_class;

 init_entity_runnable_average(&p->se);
 raw_spin_lock_irqsave(&p->pi_lock, flags);




 __set_task_cpu(p, smp_processor_id());
 if (p->sched_class->task_fork)
  p->sched_class->task_fork(p);
 raw_spin_unlock_irqrestore(&p->pi_lock, flags);
 init_task_preempt_count(p);




 return 0;
}
