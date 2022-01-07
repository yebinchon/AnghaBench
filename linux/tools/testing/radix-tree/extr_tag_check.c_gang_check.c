
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct item {unsigned long index; } ;


 int BATCH ;
 char NODE_TAGGED ;
 int assert (int) ;
 int radix_tree_gang_lookup_tag (struct radix_tree_root*,void**,unsigned long,int,int) ;

__attribute__((used)) static void gang_check(struct radix_tree_root *tree,
   char *thrash_state, int tag)
{
 struct item *items[BATCH];
 int nr_found;
 unsigned long index = 0;
 unsigned long last_index = 0;

 while ((nr_found = radix_tree_gang_lookup_tag(tree, (void **)items,
     index, BATCH, tag))) {
  int i;

  for (i = 0; i < nr_found; i++) {
   struct item *item = items[i];

   while (last_index < item->index) {
    assert(thrash_state[last_index] != NODE_TAGGED);
    last_index++;
   }
   assert(thrash_state[last_index] == NODE_TAGGED);
   last_index++;
  }
  index = items[nr_found - 1]->index + 1;
 }
}
