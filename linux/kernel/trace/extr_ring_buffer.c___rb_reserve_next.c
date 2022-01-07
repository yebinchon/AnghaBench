
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer_per_cpu {int entries_bytes; int buffer; int tail_page; } ;
struct ring_buffer_event {int dummy; } ;
struct rb_event_info {int add_timestamp; unsigned long length; int ts; scalar_t__ delta; struct buffer_page* tail_page; } ;
struct buffer_page {TYPE_1__* page; int entries; int write; } ;
struct TYPE_2__ {int time_stamp; } ;


 unsigned long BUF_PAGE_SIZE ;
 scalar_t__ RB_LEN_TIME_EXTEND ;
 unsigned long RB_WRITE_MASK ;
 struct buffer_page* READ_ONCE (int ) ;
 struct ring_buffer_event* __rb_page_index (struct buffer_page*,unsigned long) ;
 int local_add (unsigned long,int *) ;
 unsigned long local_add_return (unsigned long,int *) ;
 int local_inc (int *) ;
 struct ring_buffer_event* rb_move_tail (struct ring_buffer_per_cpu*,unsigned long,struct rb_event_info*) ;
 int rb_update_event (struct ring_buffer_per_cpu*,struct ring_buffer_event*,struct rb_event_info*) ;
 int ring_buffer_time_stamp_abs (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ring_buffer_event *
__rb_reserve_next(struct ring_buffer_per_cpu *cpu_buffer,
    struct rb_event_info *info)
{
 struct ring_buffer_event *event;
 struct buffer_page *tail_page;
 unsigned long tail, write;






 if (unlikely(info->add_timestamp))
  info->length += RB_LEN_TIME_EXTEND;


 tail_page = info->tail_page = READ_ONCE(cpu_buffer->tail_page);
 write = local_add_return(info->length, &tail_page->write);


 write &= RB_WRITE_MASK;
 tail = write - info->length;





 if (!tail && !ring_buffer_time_stamp_abs(cpu_buffer->buffer))
  info->delta = 0;


 if (unlikely(write > BUF_PAGE_SIZE))
  return rb_move_tail(cpu_buffer, tail, info);



 event = __rb_page_index(tail_page, tail);
 rb_update_event(cpu_buffer, event, info);

 local_inc(&tail_page->entries);





 if (!tail)
  tail_page->page->time_stamp = info->ts;


 local_add(info->length, &cpu_buffer->entries_bytes);

 return event;
}
