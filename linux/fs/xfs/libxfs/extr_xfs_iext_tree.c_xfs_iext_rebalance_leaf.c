
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fileoff_t ;
struct xfs_ifork {int dummy; } ;
struct xfs_iext_leaf {struct xfs_iext_leaf* prev; struct xfs_iext_leaf* next; int * recs; } ;
struct xfs_iext_cursor {int pos; struct xfs_iext_leaf* leaf; } ;


 int RECS_PER_LEAF ;
 int xfs_iext_leaf_key (struct xfs_iext_leaf*,int ) ;
 int xfs_iext_leaf_nr_entries (struct xfs_ifork*,struct xfs_iext_leaf*,int ) ;
 int xfs_iext_remove_node (struct xfs_ifork*,int ,struct xfs_iext_leaf*) ;

__attribute__((used)) static void
xfs_iext_rebalance_leaf(
 struct xfs_ifork *ifp,
 struct xfs_iext_cursor *cur,
 struct xfs_iext_leaf *leaf,
 xfs_fileoff_t offset,
 int nr_entries)
{





 if (nr_entries == 0)
  goto remove_node;

 if (leaf->prev) {
  int nr_prev = xfs_iext_leaf_nr_entries(ifp, leaf->prev, 0), i;

  if (nr_prev + nr_entries <= RECS_PER_LEAF) {
   for (i = 0; i < nr_entries; i++)
    leaf->prev->recs[nr_prev + i] = leaf->recs[i];

   if (cur->leaf == leaf) {
    cur->leaf = leaf->prev;
    cur->pos += nr_prev;
   }
   goto remove_node;
  }
 }

 if (leaf->next) {
  int nr_next = xfs_iext_leaf_nr_entries(ifp, leaf->next, 0), i;

  if (nr_entries + nr_next <= RECS_PER_LEAF) {





   for (i = 0; i < nr_next; i++) {
    leaf->recs[nr_entries + i] =
     leaf->next->recs[i];
   }

   if (cur->leaf == leaf->next) {
    cur->leaf = leaf;
    cur->pos += nr_entries;
   }

   offset = xfs_iext_leaf_key(leaf->next, 0);
   leaf = leaf->next;
   goto remove_node;
  }
 }

 return;
remove_node:
 if (leaf->prev)
  leaf->prev->next = leaf->next;
 if (leaf->next)
  leaf->next->prev = leaf->prev;
 xfs_iext_remove_node(ifp, offset, leaf);
}
