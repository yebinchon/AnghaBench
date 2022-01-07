
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exec_start; } ;
struct task_struct {int on_cpu; int comm; int * sched_class; int pi_lock; int on_rq; int flags; TYPE_1__ se; int state; } ;
struct rq {int lock; int curr; struct task_struct* idle; } ;


 char* INIT_TASK_COMM ;
 int PF_IDLE ;
 int TASK_ON_RQ_QUEUED ;
 int TASK_RUNNING ;
 int __sched_fork (int ,struct task_struct*) ;
 int __set_task_cpu (struct task_struct*,int) ;
 struct rq* cpu_rq (int) ;
 int cpumask_of (int) ;
 int ftrace_graph_init_idle_task (struct task_struct*,int) ;
 int idle_sched_class ;
 int init_idle_preempt_count (struct task_struct*,int) ;
 int kasan_unpoison_task_stack (struct task_struct*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock (int *) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int rcu_assign_pointer (int ,struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sched_clock () ;
 int set_cpus_allowed_common (struct task_struct*,int ) ;
 int sprintf (int ,char*,char*,int) ;
 int vtime_init_idle (struct task_struct*,int) ;

void init_idle(struct task_struct *idle, int cpu)
{
 struct rq *rq = cpu_rq(cpu);
 unsigned long flags;

 raw_spin_lock_irqsave(&idle->pi_lock, flags);
 raw_spin_lock(&rq->lock);

 __sched_fork(0, idle);
 idle->state = TASK_RUNNING;
 idle->se.exec_start = sched_clock();
 idle->flags |= PF_IDLE;

 kasan_unpoison_task_stack(idle);
 rcu_read_lock();
 __set_task_cpu(idle, cpu);
 rcu_read_unlock();

 rq->idle = idle;
 rcu_assign_pointer(rq->curr, idle);
 idle->on_rq = TASK_ON_RQ_QUEUED;



 raw_spin_unlock(&rq->lock);
 raw_spin_unlock_irqrestore(&idle->pi_lock, flags);


 init_idle_preempt_count(idle, cpu);




 idle->sched_class = &idle_sched_class;
 ftrace_graph_init_idle_task(idle, cpu);
 vtime_init_idle(idle, cpu);



}
