
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_kprobe {int tp; } ;


 int trace_probe_unregister_event_call (int *) ;

__attribute__((used)) static int unregister_kprobe_event(struct trace_kprobe *tk)
{
 return trace_probe_unregister_event_call(&tk->tp);
}
