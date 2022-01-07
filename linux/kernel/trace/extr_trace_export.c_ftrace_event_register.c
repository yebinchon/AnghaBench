
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int dummy; } ;
typedef enum trace_reg { ____Placeholder_trace_reg } trace_reg ;



__attribute__((used)) static int ftrace_event_register(struct trace_event_call *call,
     enum trace_reg type, void *data)
{
 return 0;
}
