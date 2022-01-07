
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_probe {int dummy; } ;
struct trace_event_call {int event; } ;


 int ENODEV ;
 int register_trace_event (int *) ;
 int trace_add_event_call (struct trace_event_call*) ;
 struct trace_event_call* trace_probe_event_call (struct trace_probe*) ;
 int unregister_trace_event (int *) ;

int trace_probe_register_event_call(struct trace_probe *tp)
{
 struct trace_event_call *call = trace_probe_event_call(tp);
 int ret;

 ret = register_trace_event(&call->event);
 if (!ret)
  return -ENODEV;

 ret = trace_add_event_call(call);
 if (ret)
  unregister_trace_event(&call->event);

 return ret;
}
