
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int INT_MAX ;
 int INT_MIN ;
 int event_filter_pid_sched_process_exit ;
 int event_filter_pid_sched_process_fork ;
 int register_trace_prio_sched_process_exit (int ,struct trace_array*,int ) ;
 int register_trace_prio_sched_process_fork (int ,struct trace_array*,int ) ;
 int unregister_trace_sched_process_exit (int ,struct trace_array*) ;
 int unregister_trace_sched_process_fork (int ,struct trace_array*) ;

void trace_event_follow_fork(struct trace_array *tr, bool enable)
{
 if (enable) {
  register_trace_prio_sched_process_fork(event_filter_pid_sched_process_fork,
             tr, INT_MIN);
  register_trace_prio_sched_process_exit(event_filter_pid_sched_process_exit,
             tr, INT_MAX);
 } else {
  unregister_trace_sched_process_fork(event_filter_pid_sched_process_fork,
          tr);
  unregister_trace_sched_process_exit(event_filter_pid_sched_process_exit,
          tr);
 }
}
