
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct list_head {scalar_t__ prev; scalar_t__ next; } ;


 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;
 scalar_t__ rb_list_head (scalar_t__) ;

__attribute__((used)) static int rb_check_list(struct ring_buffer_per_cpu *cpu_buffer,
    struct list_head *list)
{
 if (RB_WARN_ON(cpu_buffer, rb_list_head(list->prev) != list->prev))
  return 1;
 if (RB_WARN_ON(cpu_buffer, rb_list_head(list->next) != list->next))
  return 1;
 return 0;
}
