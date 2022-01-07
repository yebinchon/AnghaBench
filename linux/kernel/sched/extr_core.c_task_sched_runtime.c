
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_3__ {unsigned long long sum_exec_runtime; } ;
struct task_struct {TYPE_1__ se; TYPE_2__* sched_class; int on_cpu; } ;
struct rq_flags {int dummy; } ;
struct rq {int dummy; } ;
struct TYPE_4__ {int (* update_curr ) (struct rq*) ;} ;


 int prefetch_curr_exec_start (struct task_struct*) ;
 int stub1 (struct rq*) ;
 scalar_t__ task_current (struct rq*,struct task_struct*) ;
 scalar_t__ task_on_rq_queued (struct task_struct*) ;
 struct rq* task_rq_lock (struct task_struct*,struct rq_flags*) ;
 int task_rq_unlock (struct rq*,struct task_struct*,struct rq_flags*) ;
 int update_rq_clock (struct rq*) ;

unsigned long long task_sched_runtime(struct task_struct *p)
{
 struct rq_flags rf;
 struct rq *rq;
 u64 ns;
 rq = task_rq_lock(p, &rf);





 if (task_current(rq, p) && task_on_rq_queued(p)) {
  prefetch_curr_exec_start(p);
  update_rq_clock(rq);
  p->sched_class->update_curr(rq);
 }
 ns = p->se.sum_exec_runtime;
 task_rq_unlock(rq, p, &rf);

 return ns;
}
