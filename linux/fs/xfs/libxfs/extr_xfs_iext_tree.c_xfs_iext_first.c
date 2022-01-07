
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ifork {int dummy; } ;
struct xfs_iext_cursor {int leaf; scalar_t__ pos; } ;


 int xfs_iext_find_first_leaf (struct xfs_ifork*) ;

void
xfs_iext_first(
 struct xfs_ifork *ifp,
 struct xfs_iext_cursor *cur)
{
 cur->pos = 0;
 cur->leaf = xfs_iext_find_first_leaf(ifp);
}
