
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_mount {int m_flags; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct xfs_mount* i_mount; } ;


 int EIO ;
 int EROFS ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 TYPE_1__* XFS_I (int ) ;
 int XFS_MOUNT_RDONLY ;
 int d_inode (struct dentry*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;

__attribute__((used)) static int
xfs_vn_change_ok(
 struct dentry *dentry,
 struct iattr *iattr)
{
 struct xfs_mount *mp = XFS_I(d_inode(dentry))->i_mount;

 if (mp->m_flags & XFS_MOUNT_RDONLY)
  return -EROFS;

 if (XFS_FORCED_SHUTDOWN(mp))
  return -EIO;

 return setattr_prepare(dentry, iattr);
}
