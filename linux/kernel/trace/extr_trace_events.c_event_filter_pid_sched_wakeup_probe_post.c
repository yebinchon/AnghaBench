
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_pid_list {int dummy; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct trace_array {TYPE_2__ trace_buffer; int filtered_pids; } ;
struct task_struct {int dummy; } ;
struct TYPE_3__ {int ignore_pid; } ;


 int current ;
 struct trace_pid_list* rcu_dereference_sched (int ) ;
 scalar_t__ this_cpu_read (int ) ;
 int this_cpu_write (int ,int ) ;
 int trace_ignore_this_task (struct trace_pid_list*,int ) ;

__attribute__((used)) static void
event_filter_pid_sched_wakeup_probe_post(void *data, struct task_struct *task)
{
 struct trace_array *tr = data;
 struct trace_pid_list *pid_list;


 if (this_cpu_read(tr->trace_buffer.data->ignore_pid))
  return;

 pid_list = rcu_dereference_sched(tr->filtered_pids);


 this_cpu_write(tr->trace_buffer.data->ignore_pid,
         trace_ignore_this_task(pid_list, current));
}
