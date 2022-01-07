
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_pid_list {int dummy; } ;
struct trace_event_file {struct trace_array* tr; } ;
struct trace_array_cpu {int ignore_pid; } ;
struct TYPE_2__ {int data; } ;
struct trace_array {TYPE_1__ trace_buffer; int filtered_pids; } ;


 struct trace_pid_list* rcu_dereference_raw (int ) ;
 struct trace_array_cpu* this_cpu_ptr (int ) ;

bool trace_event_ignore_this_pid(struct trace_event_file *trace_file)
{
 struct trace_array *tr = trace_file->tr;
 struct trace_array_cpu *data;
 struct trace_pid_list *pid_list;

 pid_list = rcu_dereference_raw(tr->filtered_pids);
 if (!pid_list)
  return 0;

 data = this_cpu_ptr(tr->trace_buffer.data);

 return data->ignore_pid;
}
