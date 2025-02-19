
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_probe {int dummy; } ;
struct trace_event_file {int dummy; } ;
struct trace_event_call {int dummy; } ;


 int TP_FLAG_PROFILE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __probe_event_disable (struct trace_probe*) ;
 int trace_probe_clear_flag (struct trace_probe*,int ) ;
 scalar_t__ trace_probe_is_enabled (struct trace_probe*) ;
 struct trace_probe* trace_probe_primary_from_call (struct trace_event_call*) ;
 scalar_t__ trace_probe_remove_file (struct trace_probe*,struct trace_event_file*) ;
 int uprobe_buffer_disable () ;

__attribute__((used)) static void probe_event_disable(struct trace_event_call *call,
    struct trace_event_file *file)
{
 struct trace_probe *tp;

 tp = trace_probe_primary_from_call(call);
 if (WARN_ON_ONCE(!tp))
  return;

 if (!trace_probe_is_enabled(tp))
  return;

 if (file) {
  if (trace_probe_remove_file(tp, file) < 0)
   return;

  if (trace_probe_is_enabled(tp))
   return;
 } else
  trace_probe_clear_flag(tp, TP_FLAG_PROFILE);

 __probe_event_disable(tp);
 uprobe_buffer_disable();
}
