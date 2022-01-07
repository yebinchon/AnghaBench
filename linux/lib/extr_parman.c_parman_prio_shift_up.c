
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parman_prio {int item_list; } ;
struct parman_item {unsigned long index; int list; } ;
struct parman {int dummy; } ;


 int __parman_prio_move (struct parman*,struct parman_prio*,struct parman_item*,unsigned long,int) ;
 int list_move (int *,int *) ;
 int parman_prio_first_index (struct parman_prio*) ;
 struct parman_item* parman_prio_last_item (struct parman_prio*) ;
 int parman_prio_used (struct parman_prio*) ;

__attribute__((used)) static void parman_prio_shift_up(struct parman *parman,
     struct parman_prio *prio)
{
 struct parman_item *item;
 unsigned long to_index;

 if (!parman_prio_used(prio))
  return;
 item = parman_prio_last_item(prio);
 to_index = parman_prio_first_index(prio) - 1;
 __parman_prio_move(parman, prio, item, to_index, 1);
 list_move(&item->list, &prio->item_list);
 item->index = to_index;
}
