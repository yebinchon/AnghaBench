
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int dummy; } ;
struct trace_event_call {int dummy; } ;
typedef enum trace_reg { ____Placeholder_trace_reg } trace_reg ;
 int probe_event_disable (struct trace_event_call*,struct trace_event_file*) ;
 int probe_event_enable (struct trace_event_call*,struct trace_event_file*,int *) ;
 int uprobe_perf_close ;
 int * uprobe_perf_filter ;
 int uprobe_perf_multi_call (struct trace_event_call*,void*,int ) ;
 int uprobe_perf_open ;

__attribute__((used)) static int
trace_uprobe_register(struct trace_event_call *event, enum trace_reg type,
        void *data)
{
 struct trace_event_file *file = data;

 switch (type) {
 case 129:
  return probe_event_enable(event, file, ((void*)0));

 case 128:
  probe_event_disable(event, file);
  return 0;
 default:
  return 0;
 }
 return 0;
}
