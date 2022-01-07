
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_mask {int ref_count; int list; int range; int key; } ;
struct sw_flow {struct sw_flow_mask* mask; } ;
struct flow_table {int mask_list; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct sw_flow_mask* flow_mask_find (struct flow_table*,struct sw_flow_mask const*) ;
 int list_add_rcu (int *,int *) ;
 struct sw_flow_mask* mask_alloc () ;

__attribute__((used)) static int flow_mask_insert(struct flow_table *tbl, struct sw_flow *flow,
       const struct sw_flow_mask *new)
{
 struct sw_flow_mask *mask;
 mask = flow_mask_find(tbl, new);
 if (!mask) {

  mask = mask_alloc();
  if (!mask)
   return -ENOMEM;
  mask->key = new->key;
  mask->range = new->range;
  list_add_rcu(&mask->list, &tbl->mask_list);
 } else {
  BUG_ON(!mask->ref_count);
  mask->ref_count++;
 }

 flow->mask = mask;
 return 0;
}
