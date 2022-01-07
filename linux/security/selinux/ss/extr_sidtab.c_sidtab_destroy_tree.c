
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sidtab_entry_inner {int context; struct sidtab_node_leaf* ptr_leaf; struct sidtab_node_leaf* ptr_inner; } ;
typedef scalar_t__ u32 ;
struct sidtab_node_leaf {union sidtab_entry_inner* entries; } ;
struct sidtab_node_inner {union sidtab_entry_inner* entries; } ;


 scalar_t__ SIDTAB_INNER_ENTRIES ;
 scalar_t__ SIDTAB_LEAF_ENTRIES ;
 int context_destroy (int *) ;
 int kfree (struct sidtab_node_leaf*) ;

__attribute__((used)) static void sidtab_destroy_tree(union sidtab_entry_inner entry, u32 level)
{
 u32 i;

 if (level != 0) {
  struct sidtab_node_inner *node = entry.ptr_inner;

  if (!node)
   return;

  for (i = 0; i < SIDTAB_INNER_ENTRIES; i++)
   sidtab_destroy_tree(node->entries[i], level - 1);
  kfree(node);
 } else {
  struct sidtab_node_leaf *node = entry.ptr_leaf;

  if (!node)
   return;

  for (i = 0; i < SIDTAB_LEAF_ENTRIES; i++)
   context_destroy(&node->entries[i].context);
  kfree(node);
 }
}
