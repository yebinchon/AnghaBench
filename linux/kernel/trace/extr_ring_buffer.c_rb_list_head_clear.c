
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; } ;


 unsigned long RB_FLAG_MASK ;

__attribute__((used)) static void rb_list_head_clear(struct list_head *list)
{
 unsigned long *ptr = (unsigned long *)&list->next;

 *ptr &= ~RB_FLAG_MASK;
}
