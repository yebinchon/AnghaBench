
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_pid_list {int dummy; } ;
struct task_struct {int pid; } ;


 int trace_find_filtered_pid (struct trace_pid_list*,int ) ;

bool
trace_ignore_this_task(struct trace_pid_list *filtered_pids, struct task_struct *task)
{




 if (!filtered_pids)
  return 0;

 return !trace_find_filtered_pid(filtered_pids, task->pid);
}
