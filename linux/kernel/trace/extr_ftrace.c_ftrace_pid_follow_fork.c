
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int ftrace_pid_follow_sched_process_exit ;
 int ftrace_pid_follow_sched_process_fork ;
 int register_trace_sched_process_exit (int ,struct trace_array*) ;
 int register_trace_sched_process_fork (int ,struct trace_array*) ;
 int unregister_trace_sched_process_exit (int ,struct trace_array*) ;
 int unregister_trace_sched_process_fork (int ,struct trace_array*) ;

void ftrace_pid_follow_fork(struct trace_array *tr, bool enable)
{
 if (enable) {
  register_trace_sched_process_fork(ftrace_pid_follow_sched_process_fork,
        tr);
  register_trace_sched_process_exit(ftrace_pid_follow_sched_process_exit,
        tr);
 } else {
  unregister_trace_sched_process_fork(ftrace_pid_follow_sched_process_fork,
          tr);
  unregister_trace_sched_process_exit(ftrace_pid_follow_sched_process_exit,
          tr);
 }
}
