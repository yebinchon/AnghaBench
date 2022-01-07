
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int tp; } ;


 int init_trace_event_call (struct trace_uprobe*) ;
 int trace_probe_register_event_call (int *) ;

__attribute__((used)) static int register_uprobe_event(struct trace_uprobe *tu)
{
 init_trace_event_call(tu);

 return trace_probe_register_event_call(&tu->tp);
}
