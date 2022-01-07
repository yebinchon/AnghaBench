
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 unsigned long RB_FLAG_MASK ;

__attribute__((used)) static struct list_head *rb_list_head(struct list_head *list)
{
 unsigned long val = (unsigned long)list;

 return (struct list_head *)(val & ~RB_FLAG_MASK);
}
