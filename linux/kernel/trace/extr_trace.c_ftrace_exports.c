
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_export {int next; } ;
struct ring_buffer_event {int dummy; } ;


 int ftrace_exports_list ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 struct trace_export* rcu_dereference_raw_check (int ) ;
 int trace_process_export (struct trace_export*,struct ring_buffer_event*) ;

__attribute__((used)) static void ftrace_exports(struct ring_buffer_event *event)
{
 struct trace_export *export;

 preempt_disable_notrace();

 export = rcu_dereference_raw_check(ftrace_exports_list);
 while (export) {
  trace_process_export(export, event);
  export = rcu_dereference_raw_check(export->next);
 }

 preempt_enable_notrace();
}
