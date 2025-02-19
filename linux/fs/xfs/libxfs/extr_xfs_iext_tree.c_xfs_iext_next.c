
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_ifork {int if_height; } ;
struct xfs_iext_cursor {scalar_t__ pos; TYPE_1__* leaf; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;


 int ASSERT (int) ;
 scalar_t__ RECS_PER_LEAF ;
 int xfs_iext_first (struct xfs_ifork*,struct xfs_iext_cursor*) ;
 scalar_t__ xfs_iext_max_recs (struct xfs_ifork*) ;
 int xfs_iext_valid (struct xfs_ifork*,struct xfs_iext_cursor*) ;

void
xfs_iext_next(
 struct xfs_ifork *ifp,
 struct xfs_iext_cursor *cur)
{
 if (!cur->leaf) {
  ASSERT(cur->pos <= 0 || cur->pos >= RECS_PER_LEAF);
  xfs_iext_first(ifp, cur);
  return;
 }

 ASSERT(cur->pos >= 0);
 ASSERT(cur->pos < xfs_iext_max_recs(ifp));

 cur->pos++;
 if (ifp->if_height > 1 && !xfs_iext_valid(ifp, cur) &&
     cur->leaf->next) {
  cur->leaf = cur->leaf->next;
  cur->pos = 0;
 }
}
