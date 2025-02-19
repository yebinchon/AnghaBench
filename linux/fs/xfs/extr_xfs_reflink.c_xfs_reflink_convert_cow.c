
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_off_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_filblks_t ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_B_TO_FSB (struct xfs_mount*,scalar_t__) ;
 scalar_t__ XFS_B_TO_FSBT (struct xfs_mount*,scalar_t__) ;
 int XFS_ILOCK_EXCL ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_reflink_convert_cow_locked (struct xfs_inode*,scalar_t__,scalar_t__) ;

int
xfs_reflink_convert_cow(
 struct xfs_inode *ip,
 xfs_off_t offset,
 xfs_off_t count)
{
 struct xfs_mount *mp = ip->i_mount;
 xfs_fileoff_t offset_fsb = XFS_B_TO_FSBT(mp, offset);
 xfs_fileoff_t end_fsb = XFS_B_TO_FSB(mp, offset + count);
 xfs_filblks_t count_fsb = end_fsb - offset_fsb;
 int error;

 ASSERT(count != 0);

 xfs_ilock(ip, XFS_ILOCK_EXCL);
 error = xfs_reflink_convert_cow_locked(ip, offset_fsb, count_fsb);
 xfs_iunlock(ip, XFS_ILOCK_EXCL);
 return error;
}
