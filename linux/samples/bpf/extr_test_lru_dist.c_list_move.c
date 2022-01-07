
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int __list_del_entry (struct list_head*) ;
 int list_add (struct list_head*,struct list_head*) ;

__attribute__((used)) static inline void list_move(struct list_head *list, struct list_head *head)
{
 __list_del_entry(list);
 list_add(list, head);
}
