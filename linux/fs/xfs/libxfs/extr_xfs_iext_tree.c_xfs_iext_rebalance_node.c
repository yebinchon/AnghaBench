
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_iext_node {struct xfs_iext_node** ptrs; int * keys; } ;


 int KEYS_PER_NODE ;
 int xfs_iext_node_nr_entries (struct xfs_iext_node*,int) ;

__attribute__((used)) static struct xfs_iext_node *
xfs_iext_rebalance_node(
 struct xfs_iext_node *parent,
 int *pos,
 struct xfs_iext_node *node,
 int nr_entries)
{





 if (nr_entries == 0)
  return node;

 if (*pos > 0) {
  struct xfs_iext_node *prev = parent->ptrs[*pos - 1];
  int nr_prev = xfs_iext_node_nr_entries(prev, 0), i;

  if (nr_prev + nr_entries <= KEYS_PER_NODE) {
   for (i = 0; i < nr_entries; i++) {
    prev->keys[nr_prev + i] = node->keys[i];
    prev->ptrs[nr_prev + i] = node->ptrs[i];
   }
   return node;
  }
 }

 if (*pos + 1 < xfs_iext_node_nr_entries(parent, *pos)) {
  struct xfs_iext_node *next = parent->ptrs[*pos + 1];
  int nr_next = xfs_iext_node_nr_entries(next, 0), i;

  if (nr_entries + nr_next <= KEYS_PER_NODE) {





   for (i = 0; i < nr_next; i++) {
    node->keys[nr_entries + i] = next->keys[i];
    node->ptrs[nr_entries + i] = next->ptrs[i];
   }

   ++*pos;
   return next;
  }
 }

 return ((void*)0);
}
