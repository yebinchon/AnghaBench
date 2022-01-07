
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct xfs_log_item {int li_flags; } ;
struct xfs_inode {scalar_t__ i_ino; TYPE_1__* i_itemp; } ;
struct TYPE_2__ {struct xfs_log_item ili_item; } ;


 int ASSERT (int) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int XFS_IOLOCK_EXCL ;
 int XFS_IOLOCK_SHARED ;
 int XFS_LI_IN_AIL ;
 int XFS_MMAPLOCK_EXCL ;
 int XFS_MMAPLOCK_SHARED ;
 int delay (int) ;
 int hweight32 (int) ;
 scalar_t__ test_bit (int ,int *) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_ilock_nowait (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int) ;
 int xfs_lock_inumorder (int,int) ;

void
xfs_lock_two_inodes(
 struct xfs_inode *ip0,
 uint ip0_mode,
 struct xfs_inode *ip1,
 uint ip1_mode)
{
 struct xfs_inode *temp;
 uint mode_temp;
 int attempts = 0;
 struct xfs_log_item *lp;

 ASSERT(hweight32(ip0_mode) == 1);
 ASSERT(hweight32(ip1_mode) == 1);
 ASSERT(!(ip0_mode & (XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL)));
 ASSERT(!(ip1_mode & (XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL)));
 ASSERT(!(ip0_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL)) ||
        !(ip0_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)));
 ASSERT(!(ip1_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL)) ||
        !(ip1_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)));
 ASSERT(!(ip1_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL)) ||
        !(ip0_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)));
 ASSERT(!(ip0_mode & (XFS_MMAPLOCK_SHARED|XFS_MMAPLOCK_EXCL)) ||
        !(ip1_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)));

 ASSERT(ip0->i_ino != ip1->i_ino);

 if (ip0->i_ino > ip1->i_ino) {
  temp = ip0;
  ip0 = ip1;
  ip1 = temp;
  mode_temp = ip0_mode;
  ip0_mode = ip1_mode;
  ip1_mode = mode_temp;
 }

 again:
 xfs_ilock(ip0, xfs_lock_inumorder(ip0_mode, 0));






 lp = &ip0->i_itemp->ili_item;
 if (lp && test_bit(XFS_LI_IN_AIL, &lp->li_flags)) {
  if (!xfs_ilock_nowait(ip1, xfs_lock_inumorder(ip1_mode, 1))) {
   xfs_iunlock(ip0, ip0_mode);
   if ((++attempts % 5) == 0)
    delay(1);
   goto again;
  }
 } else {
  xfs_ilock(ip1, xfs_lock_inumorder(ip1_mode, 1));
 }
}
