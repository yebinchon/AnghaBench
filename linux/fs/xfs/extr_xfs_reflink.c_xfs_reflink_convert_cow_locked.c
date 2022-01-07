
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_filblks_t ;
struct xfs_inode {int i_cowfp; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; scalar_t__ br_state; int br_blockcount; int br_startblock; } ;


 int EIO ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int XFS_COW_FORK ;
 scalar_t__ XFS_EXT_NORM ;
 int isnullstartblock (int ) ;
 int xfs_bmap_add_extent_unwritten_real (int *,struct xfs_inode*,int ,struct xfs_iext_cursor*,struct xfs_btree_cur**,struct xfs_bmbt_irec*,int*) ;
 int xfs_iext_lookup_extent (struct xfs_inode*,int ,scalar_t__,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 scalar_t__ xfs_iext_next_extent (int ,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_trim_extent (struct xfs_bmbt_irec*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
xfs_reflink_convert_cow_locked(
 struct xfs_inode *ip,
 xfs_fileoff_t offset_fsb,
 xfs_filblks_t count_fsb)
{
 struct xfs_iext_cursor icur;
 struct xfs_bmbt_irec got;
 struct xfs_btree_cur *dummy_cur = ((void*)0);
 int dummy_logflags;
 int error = 0;

 if (!xfs_iext_lookup_extent(ip, ip->i_cowfp, offset_fsb, &icur, &got))
  return 0;

 do {
  if (got.br_startoff >= offset_fsb + count_fsb)
   break;
  if (got.br_state == XFS_EXT_NORM)
   continue;
  if (WARN_ON_ONCE(isnullstartblock(got.br_startblock)))
   return -EIO;

  xfs_trim_extent(&got, offset_fsb, count_fsb);
  if (!got.br_blockcount)
   continue;

  got.br_state = XFS_EXT_NORM;
  error = xfs_bmap_add_extent_unwritten_real(((void*)0), ip,
    XFS_COW_FORK, &icur, &dummy_cur, &got,
    &dummy_logflags);
  if (error)
   return error;
 } while (xfs_iext_next_extent(ip->i_cowfp, &icur, &got));

 return error;
}
