
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ifork {int dummy; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {int dummy; } ;


 int cur_rec (struct xfs_iext_cursor*) ;
 int xfs_iext_get (struct xfs_bmbt_irec*,int ) ;
 int xfs_iext_valid (struct xfs_ifork*,struct xfs_iext_cursor*) ;

bool
xfs_iext_get_extent(
 struct xfs_ifork *ifp,
 struct xfs_iext_cursor *cur,
 struct xfs_bmbt_irec *gotp)
{
 if (!xfs_iext_valid(ifp, cur))
  return 0;
 xfs_iext_get(gotp, cur_rec(cur));
 return 1;
}
