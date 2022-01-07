
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct xfs_inode {int dummy; } ;
struct inode {int i_mode; } ;
struct iattr {int ia_mode; } ;


 int ASSERT (int ) ;
 int S_IFMT ;
 struct inode* VFS_I (struct xfs_inode*) ;
 int XFS_ILOCK_EXCL ;
 int xfs_isilocked (struct xfs_inode*,int ) ;

__attribute__((used)) static void
xfs_setattr_mode(
 struct xfs_inode *ip,
 struct iattr *iattr)
{
 struct inode *inode = VFS_I(ip);
 umode_t mode = iattr->ia_mode;

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));

 inode->i_mode &= S_IFMT;
 inode->i_mode |= mode & ~S_IFMT;
}
