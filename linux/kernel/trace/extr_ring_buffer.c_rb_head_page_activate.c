
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer_per_cpu {struct buffer_page* head_page; } ;
struct TYPE_2__ {int prev; } ;
struct buffer_page {TYPE_1__ list; } ;


 int rb_set_list_to_head (struct ring_buffer_per_cpu*,int ) ;

__attribute__((used)) static void rb_head_page_activate(struct ring_buffer_per_cpu *cpu_buffer)
{
 struct buffer_page *head;

 head = cpu_buffer->head_page;
 if (!head)
  return;




 rb_set_list_to_head(cpu_buffer, head->list.prev);
}
