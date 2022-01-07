
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct seq_file {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;


 int do_task_stat (struct seq_file*,struct pid_namespace*,struct pid*,struct task_struct*,int) ;

int proc_tgid_stat(struct seq_file *m, struct pid_namespace *ns,
   struct pid *pid, struct task_struct *task)
{
 return do_task_stat(m, ns, pid, task, 1);
}
