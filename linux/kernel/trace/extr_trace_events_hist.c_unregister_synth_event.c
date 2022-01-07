
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int dummy; } ;
struct synth_event {struct trace_event_call call; } ;


 int trace_remove_event_call (struct trace_event_call*) ;

__attribute__((used)) static int unregister_synth_event(struct synth_event *event)
{
 struct trace_event_call *call = &event->call;
 int ret;

 ret = trace_remove_event_call(call);

 return ret;
}
