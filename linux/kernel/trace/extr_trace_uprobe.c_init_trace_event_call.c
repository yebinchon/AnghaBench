
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_uprobe {int tp; } ;
struct TYPE_3__ {int * funcs; } ;
struct trace_event_call {int flags; TYPE_2__* class; TYPE_1__ event; } ;
struct TYPE_4__ {int reg; int define_fields; } ;


 int TRACE_EVENT_FL_CAP_ANY ;
 int TRACE_EVENT_FL_UPROBE ;
 struct trace_event_call* trace_probe_event_call (int *) ;
 int trace_uprobe_register ;
 int uprobe_event_define_fields ;
 int uprobe_funcs ;

__attribute__((used)) static inline void init_trace_event_call(struct trace_uprobe *tu)
{
 struct trace_event_call *call = trace_probe_event_call(&tu->tp);

 call->event.funcs = &uprobe_funcs;
 call->class->define_fields = uprobe_event_define_fields;

 call->flags = TRACE_EVENT_FL_UPROBE | TRACE_EVENT_FL_CAP_ANY;
 call->class->reg = trace_uprobe_register;
}
