
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ordered_events_buffer {TYPE_1__* event; } ;
struct ordered_events {scalar_t__ copy_on_queue; } ;
struct TYPE_2__ {int event; } ;


 int __free_dup_event (struct ordered_events*,int ) ;
 int free (struct ordered_events_buffer*) ;

__attribute__((used)) static void
ordered_events_buffer__free(struct ordered_events_buffer *buffer,
       unsigned int max, struct ordered_events *oe)
{
 if (oe->copy_on_queue) {
  unsigned int i;

  for (i = 0; i < max; i++)
   __free_dup_event(oe, buffer->event[i].event);
 }

 free(buffer);
}
