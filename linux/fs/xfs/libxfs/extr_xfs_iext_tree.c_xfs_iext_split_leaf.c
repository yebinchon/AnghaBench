
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_iext_leaf {struct xfs_iext_leaf* next; struct xfs_iext_leaf* prev; int * recs; } ;
struct xfs_iext_cursor {int pos; struct xfs_iext_leaf* leaf; } ;


 int KM_NOFS ;
 int NODE_SIZE ;
 int RECS_PER_LEAF ;
 struct xfs_iext_leaf* kmem_zalloc (int ,int ) ;
 int xfs_iext_rec_clear (int *) ;

__attribute__((used)) static struct xfs_iext_leaf *
xfs_iext_split_leaf(
 struct xfs_iext_cursor *cur,
 int *nr_entries)
{
 struct xfs_iext_leaf *leaf = cur->leaf;
 struct xfs_iext_leaf *new = kmem_zalloc(NODE_SIZE, KM_NOFS);
 const int nr_move = RECS_PER_LEAF / 2;
 int nr_keep = nr_move + (RECS_PER_LEAF & 1);
 int i;


 if (cur->pos == RECS_PER_LEAF) {
  cur->leaf = new;
  cur->pos = 0;
  *nr_entries = 0;
  goto done;
 }

 for (i = 0; i < nr_move; i++) {
  new->recs[i] = leaf->recs[nr_keep + i];
  xfs_iext_rec_clear(&leaf->recs[nr_keep + i]);
 }

 if (cur->pos >= nr_keep) {
  cur->leaf = new;
  cur->pos -= nr_keep;
  *nr_entries = nr_move;
 } else {
  *nr_entries = nr_keep;
 }
done:
 if (leaf->next)
  leaf->next->prev = new;
 new->next = leaf->next;
 new->prev = leaf;
 leaf->next = new;
 return new;
}
