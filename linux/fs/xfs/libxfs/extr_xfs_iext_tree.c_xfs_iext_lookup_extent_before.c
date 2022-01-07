
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fileoff_t ;
struct xfs_inode {int dummy; } ;
struct xfs_ifork {int dummy; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {int br_startoff; int br_blockcount; } ;


 scalar_t__ xfs_iext_lookup_extent (struct xfs_inode*,struct xfs_ifork*,int,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_iext_prev_extent (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;

bool
xfs_iext_lookup_extent_before(
 struct xfs_inode *ip,
 struct xfs_ifork *ifp,
 xfs_fileoff_t *end,
 struct xfs_iext_cursor *cur,
 struct xfs_bmbt_irec *gotp)
{

 if (xfs_iext_lookup_extent(ip, ifp, *end - 1, cur, gotp) &&
     gotp->br_startoff <= *end - 1)
  return 1;
 if (!xfs_iext_prev_extent(ifp, cur, gotp))
  return 0;
 *end = gotp->br_startoff + gotp->br_blockcount;
 return 1;
}
