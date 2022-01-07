
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parman_prio {int dummy; } ;
struct parman_item {unsigned long index; int list; } ;
struct parman {int dummy; } ;


 int __parman_prio_move (struct parman*,struct parman_prio*,struct parman_item*,unsigned long,int) ;
 int list_del (int *) ;
 int list_replace (int *,int *) ;
 struct parman_item* parman_prio_last_item (struct parman_prio*) ;

__attribute__((used)) static void parman_prio_item_remove(struct parman *parman,
        struct parman_prio *prio,
        struct parman_item *item)
{
 struct parman_item *last_item;
 unsigned long to_index;

 last_item = parman_prio_last_item(prio);
 if (last_item == item) {
  list_del(&item->list);
  return;
 }
 to_index = item->index;
 __parman_prio_move(parman, prio, last_item, to_index, 1);
 list_del(&last_item->list);
 list_replace(&item->list, &last_item->list);
 last_item->index = to_index;
}
