
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rq_flags {int dummy; } ;
struct rq {int yld_count; } ;
struct TYPE_4__ {TYPE_1__* sched_class; } ;
struct TYPE_3__ {int (* yield_task ) (struct rq*) ;} ;


 TYPE_2__* current ;
 int preempt_disable () ;
 int rq_unlock (struct rq*,struct rq_flags*) ;
 int sched_preempt_enable_no_resched () ;
 int schedstat_inc (int ) ;
 int schedule () ;
 int stub1 (struct rq*) ;
 struct rq* this_rq_lock_irq (struct rq_flags*) ;

__attribute__((used)) static void do_sched_yield(void)
{
 struct rq_flags rf;
 struct rq *rq;

 rq = this_rq_lock_irq(&rf);

 schedstat_inc(rq->yld_count);
 current->sched_class->yield_task(rq);





 preempt_disable();
 rq_unlock(rq, &rf);
 sched_preempt_enable_no_resched();

 schedule();
}
