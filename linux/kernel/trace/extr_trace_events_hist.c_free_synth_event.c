
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct synth_event* system; } ;
struct synth_event {unsigned int n_fields; int call; int tp; TYPE_1__ class; struct synth_event* name; struct synth_event* fields; } ;


 int free_synth_event_print_fmt (int *) ;
 int free_synth_field (struct synth_event) ;
 int free_synth_tracepoint (int ) ;
 int kfree (struct synth_event*) ;

__attribute__((used)) static void free_synth_event(struct synth_event *event)
{
 unsigned int i;

 if (!event)
  return;

 for (i = 0; i < event->n_fields; i++)
  free_synth_field(event->fields[i]);

 kfree(event->fields);
 kfree(event->name);
 kfree(event->class.system);
 free_synth_tracepoint(event->tp);
 free_synth_event_print_fmt(&event->call);
 kfree(event);
}
