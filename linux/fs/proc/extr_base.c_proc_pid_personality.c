
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int personality; } ;
struct seq_file {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;


 int lock_trace (struct task_struct*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int unlock_trace (struct task_struct*) ;

__attribute__((used)) static int proc_pid_personality(struct seq_file *m, struct pid_namespace *ns,
    struct pid *pid, struct task_struct *task)
{
 int err = lock_trace(task);
 if (!err) {
  seq_printf(m, "%08x\n", task->personality);
  unlock_trace(task);
 }
 return err;
}
