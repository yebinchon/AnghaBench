
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_fileoff_t ;
struct xfs_ifork {int if_flags; } ;
struct xfs_inode {struct xfs_ifork i_df; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {int br_startblock; scalar_t__ br_blockcount; scalar_t__ br_startoff; } ;


 int ASSERT (int) ;
 int XFS_DATA_FORK ;
 int XFS_IFEXTENTS ;
 int XFS_ILOCK_EXCL ;
 int isnullstartblock (int ) ;
 int xfs_bmap_del_extent_delay (struct xfs_inode*,int ,struct xfs_iext_cursor*,struct xfs_bmbt_irec*,struct xfs_bmbt_irec*) ;
 int xfs_iext_get_extent (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_iext_lookup_extent_before (struct xfs_inode*,struct xfs_ifork*,scalar_t__*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_iext_prev_extent (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_trim_extent (struct xfs_bmbt_irec*,scalar_t__,scalar_t__) ;

int
xfs_bmap_punch_delalloc_range(
 struct xfs_inode *ip,
 xfs_fileoff_t start_fsb,
 xfs_fileoff_t length)
{
 struct xfs_ifork *ifp = &ip->i_df;
 xfs_fileoff_t end_fsb = start_fsb + length;
 struct xfs_bmbt_irec got, del;
 struct xfs_iext_cursor icur;
 int error = 0;

 ASSERT(ifp->if_flags & XFS_IFEXTENTS);

 xfs_ilock(ip, XFS_ILOCK_EXCL);
 if (!xfs_iext_lookup_extent_before(ip, ifp, &end_fsb, &icur, &got))
  goto out_unlock;

 while (got.br_startoff + got.br_blockcount > start_fsb) {
  del = got;
  xfs_trim_extent(&del, start_fsb, length);






  if (!del.br_blockcount ||
      !isnullstartblock(del.br_startblock)) {
   if (!xfs_iext_prev_extent(ifp, &icur, &got))
    break;
   continue;
  }

  error = xfs_bmap_del_extent_delay(ip, XFS_DATA_FORK, &icur,
        &got, &del);
  if (error || !xfs_iext_get_extent(ifp, &icur, &got))
   break;
 }

out_unlock:
 xfs_iunlock(ip, XFS_ILOCK_EXCL);
 return error;
}
