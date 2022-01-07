
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_ifork {int if_height; } ;
struct xfs_iext_cursor {scalar_t__ pos; TYPE_1__* leaf; } ;
struct TYPE_2__ {struct TYPE_2__* prev; } ;


 int ASSERT (int) ;
 scalar_t__ RECS_PER_LEAF ;
 int xfs_iext_last (struct xfs_ifork*,struct xfs_iext_cursor*) ;
 scalar_t__ xfs_iext_valid (struct xfs_ifork*,struct xfs_iext_cursor*) ;

void
xfs_iext_prev(
 struct xfs_ifork *ifp,
 struct xfs_iext_cursor *cur)
{
 if (!cur->leaf) {
  ASSERT(cur->pos <= 0 || cur->pos >= RECS_PER_LEAF);
  xfs_iext_last(ifp, cur);
  return;
 }

 ASSERT(cur->pos >= 0);
 ASSERT(cur->pos <= RECS_PER_LEAF);

recurse:
 do {
  cur->pos--;
  if (xfs_iext_valid(ifp, cur))
   return;
 } while (cur->pos > 0);

 if (ifp->if_height > 1 && cur->leaf->prev) {
  cur->leaf = cur->leaf->prev;
  cur->pos = RECS_PER_LEAF;
  goto recurse;
 }
}
