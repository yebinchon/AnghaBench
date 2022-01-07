
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_kprobe {int tp; } ;
struct TYPE_3__ {int * funcs; } ;
struct trace_event_call {TYPE_2__* class; int flags; TYPE_1__ event; } ;
struct TYPE_4__ {int reg; int define_fields; } ;


 int TRACE_EVENT_FL_KPROBE ;
 int kprobe_event_define_fields ;
 int kprobe_funcs ;
 int kprobe_register ;
 int kretprobe_event_define_fields ;
 int kretprobe_funcs ;
 scalar_t__ trace_kprobe_is_return (struct trace_kprobe*) ;
 struct trace_event_call* trace_probe_event_call (int *) ;

__attribute__((used)) static inline void init_trace_event_call(struct trace_kprobe *tk)
{
 struct trace_event_call *call = trace_probe_event_call(&tk->tp);

 if (trace_kprobe_is_return(tk)) {
  call->event.funcs = &kretprobe_funcs;
  call->class->define_fields = kretprobe_event_define_fields;
 } else {
  call->event.funcs = &kprobe_funcs;
  call->class->define_fields = kprobe_event_define_fields;
 }

 call->flags = TRACE_EVENT_FL_KPROBE;
 call->class->reg = kprobe_register;
}
