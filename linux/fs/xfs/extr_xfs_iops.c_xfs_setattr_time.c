
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct inode {int i_mtime; int i_ctime; int i_atime; } ;
struct iattr {int ia_valid; int ia_mtime; int ia_ctime; int ia_atime; } ;


 int ASSERT (int ) ;
 int ATTR_ATIME ;
 int ATTR_CTIME ;
 int ATTR_MTIME ;
 struct inode* VFS_I (struct xfs_inode*) ;
 int XFS_ILOCK_EXCL ;
 int xfs_isilocked (struct xfs_inode*,int ) ;

void
xfs_setattr_time(
 struct xfs_inode *ip,
 struct iattr *iattr)
{
 struct inode *inode = VFS_I(ip);

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));

 if (iattr->ia_valid & ATTR_ATIME)
  inode->i_atime = iattr->ia_atime;
 if (iattr->ia_valid & ATTR_CTIME)
  inode->i_ctime = iattr->ia_ctime;
 if (iattr->ia_valid & ATTR_MTIME)
  inode->i_mtime = iattr->ia_mtime;
}
