
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int entries_bytes; } ;
struct ring_buffer_event {int time_delta; int type_len; scalar_t__* array; } ;
struct rb_event_info {unsigned long length; struct buffer_page* tail_page; } ;
struct buffer_page {unsigned long real_end; int write; } ;


 unsigned long BUF_PAGE_SIZE ;
 scalar_t__ RB_EVNT_HDR_SIZE ;
 unsigned long RB_EVNT_MIN_SIZE ;
 int RINGBUF_TYPE_PADDING ;
 struct ring_buffer_event* __rb_page_index (struct buffer_page*,unsigned long) ;
 int local_add (unsigned long,int *) ;
 int local_sub (unsigned long,int *) ;
 int rb_event_set_padding (struct ring_buffer_event*) ;

__attribute__((used)) static inline void
rb_reset_tail(struct ring_buffer_per_cpu *cpu_buffer,
       unsigned long tail, struct rb_event_info *info)
{
 struct buffer_page *tail_page = info->tail_page;
 struct ring_buffer_event *event;
 unsigned long length = info->length;





 if (tail >= BUF_PAGE_SIZE) {





  if (tail == BUF_PAGE_SIZE)
   tail_page->real_end = 0;

  local_sub(length, &tail_page->write);
  return;
 }

 event = __rb_page_index(tail_page, tail);


 local_add(BUF_PAGE_SIZE - tail, &cpu_buffer->entries_bytes);






 tail_page->real_end = tail;
 if (tail > (BUF_PAGE_SIZE - RB_EVNT_MIN_SIZE)) {



  rb_event_set_padding(event);


  local_sub(length, &tail_page->write);
  return;
 }


 event->array[0] = (BUF_PAGE_SIZE - tail) - RB_EVNT_HDR_SIZE;
 event->type_len = RINGBUF_TYPE_PADDING;

 event->time_delta = 1;


 length = (tail + length) - BUF_PAGE_SIZE;
 local_sub(length, &tail_page->write);
}
