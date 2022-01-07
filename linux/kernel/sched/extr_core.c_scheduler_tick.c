
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* sched_class; } ;
struct rq_flags {int dummy; } ;
struct rq {int idle_balance; struct task_struct* curr; } ;
struct TYPE_2__ {int (* task_tick ) (struct rq*,struct task_struct*,int ) ;} ;


 int calc_global_load_tick (struct rq*) ;
 struct rq* cpu_rq (int) ;
 int idle_cpu (int) ;
 int perf_event_task_tick () ;
 int psi_task_tick (struct rq*) ;
 int rq_lock (struct rq*,struct rq_flags*) ;
 int rq_unlock (struct rq*,struct rq_flags*) ;
 int sched_clock_tick () ;
 int smp_processor_id () ;
 int stub1 (struct rq*,struct task_struct*,int ) ;
 int trigger_load_balance (struct rq*) ;
 int update_rq_clock (struct rq*) ;

void scheduler_tick(void)
{
 int cpu = smp_processor_id();
 struct rq *rq = cpu_rq(cpu);
 struct task_struct *curr = rq->curr;
 struct rq_flags rf;

 sched_clock_tick();

 rq_lock(rq, &rf);

 update_rq_clock(rq);
 curr->sched_class->task_tick(rq, curr, 0);
 calc_global_load_tick(rq);
 psi_task_tick(rq);

 rq_unlock(rq, &rf);

 perf_event_task_tick();





}
