
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int tail_page; int entries_bytes; int overrun; } ;
struct buffer_page {int dummy; } ;


 int BUF_PAGE_SIZE ;




 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;
 struct buffer_page* READ_ONCE (int ) ;
 int local_add (int,int *) ;
 int local_sub (int ,int *) ;
 int rb_head_page_set_head (struct ring_buffer_per_cpu*,struct buffer_page*,struct buffer_page*,int const) ;
 int rb_head_page_set_normal (struct ring_buffer_per_cpu*,struct buffer_page*,struct buffer_page*,int const) ;
 int rb_head_page_set_update (struct ring_buffer_per_cpu*,struct buffer_page*,struct buffer_page*,int) ;
 int rb_inc_page (struct ring_buffer_per_cpu*,struct buffer_page**) ;
 int rb_page_entries (struct buffer_page*) ;

__attribute__((used)) static int
rb_handle_head_page(struct ring_buffer_per_cpu *cpu_buffer,
      struct buffer_page *tail_page,
      struct buffer_page *next_page)
{
 struct buffer_page *new_head;
 int entries;
 int type;
 int ret;

 entries = rb_page_entries(next_page);






 type = rb_head_page_set_update(cpu_buffer, next_page, tail_page,
           131);
 switch (type) {
 case 131:





  local_add(entries, &cpu_buffer->overrun);
  local_sub(BUF_PAGE_SIZE, &cpu_buffer->entries_bytes);







  break;

 case 128:




  break;
 case 129:





  return 1;
 case 130:





  return 1;
 default:
  RB_WARN_ON(cpu_buffer, 1);
  return -1;
 }
 new_head = next_page;
 rb_inc_page(cpu_buffer, &new_head);

 ret = rb_head_page_set_head(cpu_buffer, new_head, next_page,
        129);
 switch (ret) {
 case 131:
 case 129:

  break;
 default:
  RB_WARN_ON(cpu_buffer, 1);
  return -1;
 }
 if (ret == 129) {
  struct buffer_page *buffer_tail_page;

  buffer_tail_page = READ_ONCE(cpu_buffer->tail_page);




  if (buffer_tail_page != tail_page &&
      buffer_tail_page != next_page)
   rb_head_page_set_normal(cpu_buffer, new_head,
      next_page,
      131);
 }






 if (type == 131) {
  ret = rb_head_page_set_normal(cpu_buffer, next_page,
           tail_page,
           128);
  if (RB_WARN_ON(cpu_buffer,
          ret != 128))
   return -1;
 }

 return 0;
}
