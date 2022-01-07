
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_item {struct rmap_item* rmap_list; } ;
struct mm_slot {int dummy; } ;


 int free_rmap_item (struct rmap_item*) ;
 int remove_rmap_item_from_tree (struct rmap_item*) ;

__attribute__((used)) static void remove_trailing_rmap_items(struct mm_slot *mm_slot,
           struct rmap_item **rmap_list)
{
 while (*rmap_list) {
  struct rmap_item *rmap_item = *rmap_list;
  *rmap_list = rmap_item->rmap_list;
  remove_rmap_item_from_tree(rmap_item);
  free_rmap_item(rmap_item);
 }
}
