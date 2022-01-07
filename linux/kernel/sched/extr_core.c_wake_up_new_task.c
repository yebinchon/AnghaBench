
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* sched_class; int recent_used_cpu; int state; int pi_lock; } ;
struct rq_flags {int flags; } ;
struct rq {int dummy; } ;
struct TYPE_2__ {int (* task_woken ) (struct rq*,struct task_struct*) ;} ;


 int ENQUEUE_NOCLOCK ;
 int SD_BALANCE_FORK ;
 int TASK_RUNNING ;
 int WF_FORK ;
 int __set_task_cpu (struct task_struct*,int ) ;
 struct rq* __task_rq_lock (struct task_struct*,struct rq_flags*) ;
 int activate_task (struct rq*,struct task_struct*,int ) ;
 int check_preempt_curr (struct rq*,struct task_struct*,int ) ;
 int post_init_entity_util_avg (struct task_struct*) ;
 int raw_spin_lock_irqsave (int *,int ) ;
 int rq_repin_lock (struct rq*,struct rq_flags*) ;
 int rq_unpin_lock (struct rq*,struct rq_flags*) ;
 int select_task_rq (struct task_struct*,int ,int ,int ) ;
 int stub1 (struct rq*,struct task_struct*) ;
 int task_cpu (struct task_struct*) ;
 int task_rq_unlock (struct rq*,struct task_struct*,struct rq_flags*) ;
 int trace_sched_wakeup_new (struct task_struct*) ;
 int update_rq_clock (struct rq*) ;

void wake_up_new_task(struct task_struct *p)
{
 struct rq_flags rf;
 struct rq *rq;

 raw_spin_lock_irqsave(&p->pi_lock, rf.flags);
 p->state = TASK_RUNNING;
 rq = __task_rq_lock(p, &rf);
 update_rq_clock(rq);
 post_init_entity_util_avg(p);

 activate_task(rq, p, ENQUEUE_NOCLOCK);
 trace_sched_wakeup_new(p);
 check_preempt_curr(rq, p, WF_FORK);
 task_rq_unlock(rq, p, &rf);
}
