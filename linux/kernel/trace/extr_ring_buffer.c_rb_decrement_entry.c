
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {struct buffer_page* commit_page; } ;
struct ring_buffer_event {int dummy; } ;
struct buffer_page {void* page; int entries; } ;


 unsigned long PAGE_MASK ;
 int RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;
 scalar_t__ likely (int) ;
 int local_dec (int *) ;
 int rb_inc_page (struct ring_buffer_per_cpu*,struct buffer_page**) ;

__attribute__((used)) static inline void
rb_decrement_entry(struct ring_buffer_per_cpu *cpu_buffer,
     struct ring_buffer_event *event)
{
 unsigned long addr = (unsigned long)event;
 struct buffer_page *bpage = cpu_buffer->commit_page;
 struct buffer_page *start;

 addr &= PAGE_MASK;


 if (likely(bpage->page == (void *)addr)) {
  local_dec(&bpage->entries);
  return;
 }





 rb_inc_page(cpu_buffer, &bpage);
 start = bpage;
 do {
  if (bpage->page == (void *)addr) {
   local_dec(&bpage->entries);
   return;
  }
  rb_inc_page(cpu_buffer, &bpage);
 } while (bpage != start);


 RB_WARN_ON(cpu_buffer, 1);
}
