
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int type_len; int* array; } ;


 int BUG () ;
 int RB_EVNT_HDR_SIZE ;
 int RB_LEN_TIME_EXTEND ;
 int RB_LEN_TIME_STAMP ;




 int rb_event_data_length (struct ring_buffer_event*) ;
 int rb_null_event (struct ring_buffer_event*) ;

__attribute__((used)) static inline unsigned
rb_event_length(struct ring_buffer_event *event)
{
 switch (event->type_len) {
 case 130:
  if (rb_null_event(event))

   return -1;
  return event->array[0] + RB_EVNT_HDR_SIZE;

 case 129:
  return RB_LEN_TIME_EXTEND;

 case 128:
  return RB_LEN_TIME_STAMP;

 case 131:
  return rb_event_data_length(event);
 default:
  BUG();
 }

 return 0;
}
