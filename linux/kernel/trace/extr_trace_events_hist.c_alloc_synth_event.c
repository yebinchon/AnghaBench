
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synth_field {int dummy; } ;
struct synth_event {int n_fields; struct synth_field** fields; int devent; int name; } ;


 int ENOMEM ;
 struct synth_event* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dyn_event_init (int *,int *) ;
 int free_synth_event (struct synth_event*) ;
 struct synth_field** kcalloc (int,int,int ) ;
 int kfree (struct synth_event*) ;
 int kstrdup (char const*,int ) ;
 struct synth_event* kzalloc (int,int ) ;
 int synth_event_ops ;

__attribute__((used)) static struct synth_event *alloc_synth_event(const char *name, int n_fields,
          struct synth_field **fields)
{
 struct synth_event *event;
 unsigned int i;

 event = kzalloc(sizeof(*event), GFP_KERNEL);
 if (!event) {
  event = ERR_PTR(-ENOMEM);
  goto out;
 }

 event->name = kstrdup(name, GFP_KERNEL);
 if (!event->name) {
  kfree(event);
  event = ERR_PTR(-ENOMEM);
  goto out;
 }

 event->fields = kcalloc(n_fields, sizeof(*event->fields), GFP_KERNEL);
 if (!event->fields) {
  free_synth_event(event);
  event = ERR_PTR(-ENOMEM);
  goto out;
 }

 dyn_event_init(&event->devent, &synth_event_ops);

 for (i = 0; i < n_fields; i++)
  event->fields[i] = fields[i];

 event->n_fields = n_fields;
 out:
 return event;
}
