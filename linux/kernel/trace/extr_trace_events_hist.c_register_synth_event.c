
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * funcs; } ;
struct trace_event_call {TYPE_2__ event; int * tp; struct synth_event* data; TYPE_1__* class; int flags; } ;
struct TYPE_4__ {int probe; int reg; int define_fields; int fields; int system; } ;
struct synth_event {int * tp; int name; TYPE_1__ class; struct trace_event_call call; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int SYNTH_SYSTEM ;
 int TRACE_EVENT_FL_TRACEPOINT ;
 int * alloc_synth_tracepoint (int ) ;
 int kstrdup (int ,int ) ;
 int pr_warn (char*,int ) ;
 int register_trace_event (TYPE_2__*) ;
 int set_synth_event_print_fmt (struct trace_event_call*) ;
 int synth_event_define_fields ;
 int synth_event_funcs ;
 int trace_add_event_call (struct trace_event_call*) ;
 int trace_event_name (struct trace_event_call*) ;
 int trace_event_raw_event_synth ;
 int trace_event_reg ;
 int trace_remove_event_call (struct trace_event_call*) ;
 int unregister_trace_event (TYPE_2__*) ;

__attribute__((used)) static int register_synth_event(struct synth_event *event)
{
 struct trace_event_call *call = &event->call;
 int ret = 0;

 event->call.class = &event->class;
 event->class.system = kstrdup(SYNTH_SYSTEM, GFP_KERNEL);
 if (!event->class.system) {
  ret = -ENOMEM;
  goto out;
 }

 event->tp = alloc_synth_tracepoint(event->name);
 if (IS_ERR(event->tp)) {
  ret = PTR_ERR(event->tp);
  event->tp = ((void*)0);
  goto out;
 }

 INIT_LIST_HEAD(&call->class->fields);
 call->event.funcs = &synth_event_funcs;
 call->class->define_fields = synth_event_define_fields;

 ret = register_trace_event(&call->event);
 if (!ret) {
  ret = -ENODEV;
  goto out;
 }
 call->flags = TRACE_EVENT_FL_TRACEPOINT;
 call->class->reg = trace_event_reg;
 call->class->probe = trace_event_raw_event_synth;
 call->data = event;
 call->tp = event->tp;

 ret = trace_add_event_call(call);
 if (ret) {
  pr_warn("Failed to register synthetic event: %s\n",
   trace_event_name(call));
  goto err;
 }

 ret = set_synth_event_print_fmt(call);
 if (ret < 0) {
  trace_remove_event_call(call);
  goto err;
 }
 out:
 return ret;
 err:
 unregister_trace_event(&call->event);
 goto out;
}
