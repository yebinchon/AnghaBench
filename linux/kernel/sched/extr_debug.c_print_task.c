
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sum_sleep_runtime; int wait_sum; } ;
struct TYPE_4__ {TYPE_1__ statistics; int sum_exec_runtime; int vruntime; } ;
struct task_struct {TYPE_2__ se; int prio; scalar_t__ nivcsw; scalar_t__ nvcsw; int comm; } ;
struct seq_file {int dummy; } ;
struct rq {struct task_struct* curr; } ;


 int SEQ_printf (struct seq_file*,char*,...) ;
 int SPLIT_NS (int ) ;
 int schedstat_val_or_zero (int ) ;
 int task_group (struct task_struct*) ;
 int task_group_path (int ) ;
 int task_node (struct task_struct*) ;
 int task_numa_group_id (struct task_struct*) ;
 int task_pid_nr (struct task_struct*) ;
 int task_state_to_char (struct task_struct*) ;

__attribute__((used)) static void
print_task(struct seq_file *m, struct rq *rq, struct task_struct *p)
{
 if (rq->curr == p)
  SEQ_printf(m, ">R");
 else
  SEQ_printf(m, " %c", task_state_to_char(p));

 SEQ_printf(m, "%15s %5d %9Ld.%06ld %9Ld %5d ",
  p->comm, task_pid_nr(p),
  SPLIT_NS(p->se.vruntime),
  (long long)(p->nvcsw + p->nivcsw),
  p->prio);

 SEQ_printf(m, "%9Ld.%06ld %9Ld.%06ld %9Ld.%06ld",
  SPLIT_NS(schedstat_val_or_zero(p->se.statistics.wait_sum)),
  SPLIT_NS(p->se.sum_exec_runtime),
  SPLIT_NS(schedstat_val_or_zero(p->se.statistics.sum_sleep_runtime)));
 SEQ_printf(m, "\n");
}
