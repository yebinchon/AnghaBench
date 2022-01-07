
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_pid_list {int dummy; } ;
struct trace_array {int filtered_pids; } ;
struct task_struct {int dummy; } ;


 struct trace_pid_list* rcu_dereference_raw (int ) ;
 int trace_filter_add_remove_task (struct trace_pid_list*,int *,struct task_struct*) ;

__attribute__((used)) static void
event_filter_pid_sched_process_exit(void *data, struct task_struct *task)
{
 struct trace_pid_list *pid_list;
 struct trace_array *tr = data;

 pid_list = rcu_dereference_raw(tr->filtered_pids);
 trace_filter_add_remove_task(pid_list, ((void*)0), task);
}
