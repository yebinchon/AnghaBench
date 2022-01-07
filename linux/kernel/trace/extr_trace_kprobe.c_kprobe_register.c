
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int dummy; } ;
struct trace_event_call {int dummy; } ;
typedef enum trace_reg { ____Placeholder_trace_reg } trace_reg ;
 int disable_trace_kprobe (struct trace_event_call*,struct trace_event_file*) ;
 int enable_trace_kprobe (struct trace_event_call*,struct trace_event_file*) ;

__attribute__((used)) static int kprobe_register(struct trace_event_call *event,
      enum trace_reg type, void *data)
{
 struct trace_event_file *file = data;

 switch (type) {
 case 129:
  return enable_trace_kprobe(event, file);
 case 128:
  return disable_trace_kprobe(event, file);
 }
 return 0;
}
