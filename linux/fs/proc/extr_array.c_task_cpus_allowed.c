
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int cpus_ptr; } ;
struct seq_file {int dummy; } ;


 int cpumask_pr_args (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void task_cpus_allowed(struct seq_file *m, struct task_struct *task)
{
 seq_printf(m, "Cpus_allowed:\t%*pb\n",
     cpumask_pr_args(task->cpus_ptr));
 seq_printf(m, "Cpus_allowed_list:\t%*pbl\n",
     cpumask_pr_args(task->cpus_ptr));
}
