
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mems_allowed; } ;
struct seq_file {int dummy; } ;


 int nodemask_pr_args (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

void cpuset_task_status_allowed(struct seq_file *m, struct task_struct *task)
{
 seq_printf(m, "Mems_allowed:\t%*pb\n",
     nodemask_pr_args(&task->mems_allowed));
 seq_printf(m, "Mems_allowed_list:\t%*pbl\n",
     nodemask_pr_args(&task->mems_allowed));
}
