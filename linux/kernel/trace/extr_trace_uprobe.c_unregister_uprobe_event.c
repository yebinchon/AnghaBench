
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int tp; } ;


 int trace_probe_unregister_event_call (int *) ;

__attribute__((used)) static int unregister_uprobe_event(struct trace_uprobe *tu)
{
 return trace_probe_unregister_event_call(&tu->tp);
}
