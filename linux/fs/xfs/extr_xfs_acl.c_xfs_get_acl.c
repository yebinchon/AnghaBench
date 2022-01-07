
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int i_mount; } ;
struct xfs_acl {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;




 int ATTR_ALLOC ;
 int ATTR_ROOT ;
 int BUG () ;
 int ENOATTR ;
 struct posix_acl* ERR_PTR (int) ;
 unsigned char* SGI_ACL_DEFAULT ;
 unsigned char* SGI_ACL_FILE ;
 int XFS_ACL_MAX_ENTRIES (int ) ;
 int XFS_ACL_MAX_SIZE (int ) ;
 struct xfs_inode* XFS_I (struct inode*) ;
 int kmem_free (struct xfs_acl*) ;
 int trace_xfs_get_acl (struct xfs_inode*) ;
 struct posix_acl* xfs_acl_from_disk (struct xfs_acl*,int,int ) ;
 int xfs_attr_get (struct xfs_inode*,unsigned char*,unsigned char**,int*,int) ;

struct posix_acl *
xfs_get_acl(struct inode *inode, int type)
{
 struct xfs_inode *ip = XFS_I(inode);
 struct posix_acl *acl = ((void*)0);
 struct xfs_acl *xfs_acl = ((void*)0);
 unsigned char *ea_name;
 int error;
 int len;

 trace_xfs_get_acl(ip);

 switch (type) {
 case 129:
  ea_name = SGI_ACL_FILE;
  break;
 case 128:
  ea_name = SGI_ACL_DEFAULT;
  break;
 default:
  BUG();
 }





 len = XFS_ACL_MAX_SIZE(ip->i_mount);
 error = xfs_attr_get(ip, ea_name, (unsigned char **)&xfs_acl, &len,
    ATTR_ALLOC | ATTR_ROOT);
 if (error) {




  if (error != -ENOATTR)
   acl = ERR_PTR(error);
 } else {
  acl = xfs_acl_from_disk(xfs_acl, len,
     XFS_ACL_MAX_ENTRIES(ip->i_mount));
  kmem_free(xfs_acl);
 }
 return acl;
}
