
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_file {int flags; TYPE_1__* class; int tp; } ;
struct trace_event_call {int flags; TYPE_1__* class; int tp; } ;
typedef enum trace_reg { ____Placeholder_trace_reg } trace_reg ;
struct TYPE_2__ {int perf_probe; int probe; } ;


 int TRACE_EVENT_FL_TRACEPOINT ;
 int WARN_ON (int) ;
 int tracepoint_probe_register (int ,int ,struct trace_event_file*) ;
 int tracepoint_probe_unregister (int ,int ,struct trace_event_file*) ;

int trace_event_reg(struct trace_event_call *call,
      enum trace_reg type, void *data)
{
 struct trace_event_file *file = data;

 WARN_ON(!(call->flags & TRACE_EVENT_FL_TRACEPOINT));
 switch (type) {
 case 129:
  return tracepoint_probe_register(call->tp,
       call->class->probe,
       file);
 case 128:
  tracepoint_probe_unregister(call->tp,
         call->class->probe,
         file);
  return 0;
 }
 return 0;
}
