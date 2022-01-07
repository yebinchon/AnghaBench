
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct seq_file {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct mm_struct {int dummy; } ;


 int cpuset_task_status_allowed (struct seq_file*,struct task_struct*) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int proc_task_name (struct seq_file*,struct task_struct*,int) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int task_cap (struct seq_file*,struct task_struct*) ;
 int task_context_switch_counts (struct seq_file*,struct task_struct*) ;
 int task_core_dumping (struct seq_file*,struct mm_struct*) ;
 int task_cpus_allowed (struct seq_file*,struct task_struct*) ;
 int task_mem (struct seq_file*,struct mm_struct*) ;
 int task_seccomp (struct seq_file*,struct task_struct*) ;
 int task_sig (struct seq_file*,struct task_struct*) ;
 int task_state (struct seq_file*,struct pid_namespace*,struct pid*,struct task_struct*) ;
 int task_thp_status (struct seq_file*,struct mm_struct*) ;

int proc_pid_status(struct seq_file *m, struct pid_namespace *ns,
   struct pid *pid, struct task_struct *task)
{
 struct mm_struct *mm = get_task_mm(task);

 seq_puts(m, "Name:\t");
 proc_task_name(m, task, 1);
 seq_putc(m, '\n');

 task_state(m, ns, pid, task);

 if (mm) {
  task_mem(m, mm);
  task_core_dumping(m, mm);
  task_thp_status(m, mm);
  mmput(mm);
 }
 task_sig(m, task);
 task_cap(m, task);
 task_seccomp(m, task);
 task_cpus_allowed(m, task);
 cpuset_task_status_allowed(m, task);
 task_context_switch_counts(m, task);
 return 0;
}
