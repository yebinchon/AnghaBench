
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_pid_list {int dummy; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct trace_array {TYPE_2__ trace_buffer; int filtered_pids; } ;
struct TYPE_3__ {int ignore_pid; } ;


 int current ;
 int event_mutex ;
 int mutex_is_locked (int *) ;
 struct trace_pid_list* rcu_dereference_protected (int ,int ) ;
 int this_cpu_write (int ,int ) ;
 int trace_ignore_this_task (struct trace_pid_list*,int ) ;

__attribute__((used)) static void ignore_task_cpu(void *data)
{
 struct trace_array *tr = data;
 struct trace_pid_list *pid_list;





 pid_list = rcu_dereference_protected(tr->filtered_pids,
          mutex_is_locked(&event_mutex));

 this_cpu_write(tr->trace_buffer.data->ignore_pid,
         trace_ignore_this_task(pid_list, current));
}
