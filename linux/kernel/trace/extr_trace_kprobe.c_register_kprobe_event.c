
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_kprobe {int tp; } ;


 int init_trace_event_call (struct trace_kprobe*) ;
 int trace_probe_register_event_call (int *) ;

__attribute__((used)) static int register_kprobe_event(struct trace_kprobe *tk)
{
 init_trace_event_call(tk);

 return trace_probe_register_event_call(&tk->tp);
}
