
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_inode {int dummy; } ;
struct inode {int dummy; } ;


 int EWOULDBLOCK ;
 struct xfs_inode* XFS_I (struct inode*) ;
 int XFS_IOLOCK_EXCL ;
 int XFS_IOLOCK_SHARED ;
 int break_layout (struct inode*,int) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;

int
xfs_break_leased_layouts(
 struct inode *inode,
 uint *iolock,
 bool *did_unlock)
{
 struct xfs_inode *ip = XFS_I(inode);
 int error;

 while ((error = break_layout(inode, 0)) == -EWOULDBLOCK) {
  xfs_iunlock(ip, *iolock);
  *did_unlock = 1;
  error = break_layout(inode, 1);
  *iolock &= ~XFS_IOLOCK_SHARED;
  *iolock |= XFS_IOLOCK_EXCL;
  xfs_ilock(ip, *iolock);
 }

 return error;
}
