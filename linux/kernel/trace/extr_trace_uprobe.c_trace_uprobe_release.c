
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int dummy; } ;
struct dyn_event {int dummy; } ;


 struct trace_uprobe* to_trace_uprobe (struct dyn_event*) ;
 int unregister_trace_uprobe (struct trace_uprobe*) ;

__attribute__((used)) static int trace_uprobe_release(struct dyn_event *ev)
{
 struct trace_uprobe *tu = to_trace_uprobe(ev);

 return unregister_trace_uprobe(tu);
}
