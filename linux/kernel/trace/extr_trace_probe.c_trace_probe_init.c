
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_probe_event {int dummy; } ;
struct trace_probe {TYPE_2__* event; int list; } ;
struct trace_event_call {void* name; TYPE_1__* class; } ;
struct TYPE_3__ {void* system; int fields; } ;
struct TYPE_4__ {TYPE_1__ class; int probes; int files; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* kstrdup (char const*,int ) ;
 TYPE_2__* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int trace_probe_cleanup (struct trace_probe*) ;
 struct trace_event_call* trace_probe_event_call (struct trace_probe*) ;

int trace_probe_init(struct trace_probe *tp, const char *event,
       const char *group)
{
 struct trace_event_call *call;
 int ret = 0;

 if (!event || !group)
  return -EINVAL;

 tp->event = kzalloc(sizeof(struct trace_probe_event), GFP_KERNEL);
 if (!tp->event)
  return -ENOMEM;

 INIT_LIST_HEAD(&tp->event->files);
 INIT_LIST_HEAD(&tp->event->class.fields);
 INIT_LIST_HEAD(&tp->event->probes);
 INIT_LIST_HEAD(&tp->list);
 list_add(&tp->event->probes, &tp->list);

 call = trace_probe_event_call(tp);
 call->class = &tp->event->class;
 call->name = kstrdup(event, GFP_KERNEL);
 if (!call->name) {
  ret = -ENOMEM;
  goto error;
 }

 tp->event->class.system = kstrdup(group, GFP_KERNEL);
 if (!tp->event->class.system) {
  ret = -ENOMEM;
  goto error;
 }

 return 0;

error:
 trace_probe_cleanup(tp);
 return ret;
}
