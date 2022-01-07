
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {scalar_t__ type_len; int time_delta; } ;


 scalar_t__ RINGBUF_TYPE_PADDING ;

__attribute__((used)) static inline int rb_null_event(struct ring_buffer_event *event)
{
 return event->type_len == RINGBUF_TYPE_PADDING && !event->time_delta;
}
