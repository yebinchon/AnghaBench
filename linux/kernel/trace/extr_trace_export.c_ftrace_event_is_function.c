
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int dummy; } ;


 struct trace_event_call event_function ;

bool ftrace_event_is_function(struct trace_event_call *call)
{
 return call == &event_function;
}
