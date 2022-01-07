
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;


 unsigned int RB_LEN_TIME_EXTEND ;
 scalar_t__ extended_time (struct ring_buffer_event*) ;
 int rb_event_length (struct ring_buffer_event*) ;
 struct ring_buffer_event* skip_time_extend (struct ring_buffer_event*) ;

__attribute__((used)) static inline unsigned
rb_event_ts_length(struct ring_buffer_event *event)
{
 unsigned len = 0;

 if (extended_time(event)) {

  len = RB_LEN_TIME_EXTEND;
  event = skip_time_extend(event);
 }
 return len + rb_event_length(event);
}
