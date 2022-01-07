
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_kprobe {int tp; int devent; } ;


 int EBUSY ;
 int __unregister_trace_kprobe (struct trace_kprobe*) ;
 int dyn_event_remove (int *) ;
 scalar_t__ trace_probe_has_sibling (int *) ;
 scalar_t__ trace_probe_is_enabled (int *) ;
 int trace_probe_unlink (int *) ;
 scalar_t__ unregister_kprobe_event (struct trace_kprobe*) ;

__attribute__((used)) static int unregister_trace_kprobe(struct trace_kprobe *tk)
{

 if (trace_probe_has_sibling(&tk->tp))
  goto unreg;


 if (trace_probe_is_enabled(&tk->tp))
  return -EBUSY;


 if (unregister_kprobe_event(tk))
  return -EBUSY;

unreg:
 __unregister_trace_kprobe(tk);
 dyn_event_remove(&tk->devent);
 trace_probe_unlink(&tk->tp);

 return 0;
}
