
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;


 void* rb_event_data (struct ring_buffer_event*) ;

void *ring_buffer_event_data(struct ring_buffer_event *event)
{
 return rb_event_data(event);
}
