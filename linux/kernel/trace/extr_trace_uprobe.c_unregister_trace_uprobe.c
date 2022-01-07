
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int tp; int devent; } ;


 int dyn_event_remove (int *) ;
 int free_trace_uprobe (struct trace_uprobe*) ;
 scalar_t__ trace_probe_has_sibling (int *) ;
 int trace_probe_unlink (int *) ;
 int unregister_uprobe_event (struct trace_uprobe*) ;

__attribute__((used)) static int unregister_trace_uprobe(struct trace_uprobe *tu)
{
 int ret;

 if (trace_probe_has_sibling(&tu->tp))
  goto unreg;

 ret = unregister_uprobe_event(tu);
 if (ret)
  return ret;

unreg:
 dyn_event_remove(&tu->devent);
 trace_probe_unlink(&tu->tp);
 free_trace_uprobe(tu);
 return 0;
}
