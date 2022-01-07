
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ring_buffer_per_cpu {int buffer; } ;
struct ring_buffer_event {unsigned int* array; scalar_t__ type_len; scalar_t__ time_delta; } ;
struct rb_event_info {unsigned int length; int add_timestamp; scalar_t__ delta; } ;


 scalar_t__ DIV_ROUND_UP (unsigned int,int ) ;
 int RB_ALIGNMENT ;
 scalar_t__ RB_EVNT_HDR_SIZE ;
 scalar_t__ RB_LEN_TIME_EXTEND ;
 unsigned int RB_MAX_SMALL_DATA ;
 struct ring_buffer_event* rb_add_time_stamp (struct ring_buffer_event*,scalar_t__,int) ;
 int rb_event_is_commit (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ;
 int ring_buffer_time_stamp_abs (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
rb_update_event(struct ring_buffer_per_cpu *cpu_buffer,
  struct ring_buffer_event *event,
  struct rb_event_info *info)
{
 unsigned length = info->length;
 u64 delta = info->delta;


 if (unlikely(!rb_event_is_commit(cpu_buffer, event)))
  delta = 0;





 if (unlikely(info->add_timestamp)) {
  bool abs = ring_buffer_time_stamp_abs(cpu_buffer->buffer);

  event = rb_add_time_stamp(event, info->delta, abs);
  length -= RB_LEN_TIME_EXTEND;
  delta = 0;
 }

 event->time_delta = delta;
 length -= RB_EVNT_HDR_SIZE;
 if (length > RB_MAX_SMALL_DATA) {
  event->type_len = 0;
  event->array[0] = length;
 } else
  event->type_len = DIV_ROUND_UP(length, RB_ALIGNMENT);
}
