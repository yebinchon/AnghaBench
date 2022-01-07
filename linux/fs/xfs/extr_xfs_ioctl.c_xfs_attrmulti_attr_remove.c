
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct inode {int dummy; } ;


 int EPERM ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int XFS_I (struct inode*) ;
 int xfs_attr_remove (int ,unsigned char*,int ) ;
 int xfs_forget_acl (struct inode*,unsigned char*,int ) ;

int
xfs_attrmulti_attr_remove(
 struct inode *inode,
 unsigned char *name,
 uint32_t flags)
{
 int error;

 if (IS_IMMUTABLE(inode) || IS_APPEND(inode))
  return -EPERM;
 error = xfs_attr_remove(XFS_I(inode), name, flags);
 if (!error)
  xfs_forget_acl(inode, name, flags);
 return error;
}
