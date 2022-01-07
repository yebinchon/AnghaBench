
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_lru_one {int nr_items; } ;
struct list_head {int dummy; } ;


 int list_del_init (struct list_head*) ;

void list_lru_isolate(struct list_lru_one *list, struct list_head *item)
{
 list_del_init(item);
 list->nr_items--;
}
