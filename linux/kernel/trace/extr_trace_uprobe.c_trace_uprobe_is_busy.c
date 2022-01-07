
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int tp; } ;
struct dyn_event {int dummy; } ;


 struct trace_uprobe* to_trace_uprobe (struct dyn_event*) ;
 int trace_probe_is_enabled (int *) ;

__attribute__((used)) static bool trace_uprobe_is_busy(struct dyn_event *ev)
{
 struct trace_uprobe *tu = to_trace_uprobe(ev);

 return trace_probe_is_enabled(&tu->tp);
}
