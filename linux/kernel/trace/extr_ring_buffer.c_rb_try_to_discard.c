
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int entries_bytes; int tail_page; } ;
struct ring_buffer_event {int dummy; } ;
struct buffer_page {void* page; int write; } ;


 unsigned long PAGE_MASK ;
 unsigned long RB_WRITE_MASK ;
 struct buffer_page* READ_ONCE (int ) ;
 unsigned long local_cmpxchg (int *,unsigned long,unsigned long) ;
 unsigned long local_read (int *) ;
 int local_sub (unsigned long,int *) ;
 unsigned long rb_event_index (struct ring_buffer_event*) ;
 unsigned long rb_event_length (struct ring_buffer_event*) ;
 unsigned long rb_event_ts_length (struct ring_buffer_event*) ;
 unsigned long rb_page_write (struct buffer_page*) ;

__attribute__((used)) static inline int
rb_try_to_discard(struct ring_buffer_per_cpu *cpu_buffer,
    struct ring_buffer_event *event)
{
 unsigned long new_index, old_index;
 struct buffer_page *bpage;
 unsigned long index;
 unsigned long addr;

 new_index = rb_event_index(event);
 old_index = new_index + rb_event_ts_length(event);
 addr = (unsigned long)event;
 addr &= PAGE_MASK;

 bpage = READ_ONCE(cpu_buffer->tail_page);

 if (bpage->page == (void *)addr && rb_page_write(bpage) == old_index) {
  unsigned long write_mask =
   local_read(&bpage->write) & ~RB_WRITE_MASK;
  unsigned long event_length = rb_event_length(event);






  old_index += write_mask;
  new_index += write_mask;
  index = local_cmpxchg(&bpage->write, old_index, new_index);
  if (index == old_index) {

   local_sub(event_length, &cpu_buffer->entries_bytes);
   return 1;
  }
 }


 return 0;
}
