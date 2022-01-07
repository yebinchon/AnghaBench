
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct posix_acl {scalar_t__ a_count; } ;
struct inode {int i_sb; } ;


 int ACL_TYPE_ACCESS ;
 int E2BIG ;
 scalar_t__ XFS_ACL_MAX_ENTRIES (int ) ;
 int XFS_M (int ) ;
 int __xfs_set_acl (struct inode*,struct posix_acl*,int) ;
 int posix_acl_update_mode (struct inode*,int *,struct posix_acl**) ;
 int xfs_set_mode (struct inode*,int ) ;

int
xfs_set_acl(struct inode *inode, struct posix_acl *acl, int type)
{
 umode_t mode;
 bool set_mode = 0;
 int error = 0;

 if (!acl)
  goto set_acl;

 error = -E2BIG;
 if (acl->a_count > XFS_ACL_MAX_ENTRIES(XFS_M(inode->i_sb)))
  return error;

 if (type == ACL_TYPE_ACCESS) {
  error = posix_acl_update_mode(inode, &mode, &acl);
  if (error)
   return error;
  set_mode = 1;
 }

 set_acl:
 error = __xfs_set_acl(inode, acl, type);
 if (error)
  return error;






 if (set_mode)
  error = xfs_set_mode(inode, mode);

 return error;
}
