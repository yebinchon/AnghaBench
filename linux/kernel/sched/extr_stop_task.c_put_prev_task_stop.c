
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_3__ {int exec_max; } ;
struct TYPE_4__ {void* exec_start; int sum_exec_runtime; TYPE_1__ statistics; } ;
struct task_struct {TYPE_2__ se; } ;
struct rq {struct task_struct* curr; } ;
typedef scalar_t__ s64 ;


 int account_group_exec_runtime (struct task_struct*,void*) ;
 int cgroup_account_cputime (struct task_struct*,void*) ;
 int max (int ,void*) ;
 void* rq_clock_task (struct rq*) ;
 int schedstat_set (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void put_prev_task_stop(struct rq *rq, struct task_struct *prev)
{
 struct task_struct *curr = rq->curr;
 u64 delta_exec;

 delta_exec = rq_clock_task(rq) - curr->se.exec_start;
 if (unlikely((s64)delta_exec < 0))
  delta_exec = 0;

 schedstat_set(curr->se.statistics.exec_max,
   max(curr->se.statistics.exec_max, delta_exec));

 curr->se.sum_exec_runtime += delta_exec;
 account_group_exec_runtime(curr, delta_exec);

 curr->se.exec_start = rq_clock_task(rq);
 cgroup_account_cputime(curr, delta_exec);
}
