
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int i_mount; } ;
struct xfs_acl_entry {int dummy; } ;
struct xfs_acl {int dummy; } ;
struct posix_acl {int a_count; } ;
struct inode {int i_mode; } ;




 int ATTR_ROOT ;
 int EACCES ;
 int EINVAL ;
 int ENOATTR ;
 int ENOMEM ;
 unsigned char* SGI_ACL_DEFAULT ;
 unsigned char* SGI_ACL_FILE ;
 int S_ISDIR (int ) ;
 int XFS_ACL_MAX_ENTRIES (int ) ;
 int XFS_ACL_MAX_SIZE (int ) ;
 struct xfs_inode* XFS_I (struct inode*) ;
 int kmem_free (struct xfs_acl*) ;
 struct xfs_acl* kmem_zalloc_large (int,int ) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;
 int xfs_acl_to_disk (struct xfs_acl*,struct posix_acl*) ;
 int xfs_attr_remove (struct xfs_inode*,unsigned char*,int ) ;
 int xfs_attr_set (struct xfs_inode*,unsigned char*,unsigned char*,int,int ) ;

int
__xfs_set_acl(struct inode *inode, struct posix_acl *acl, int type)
{
 struct xfs_inode *ip = XFS_I(inode);
 unsigned char *ea_name;
 int error;

 switch (type) {
 case 129:
  ea_name = SGI_ACL_FILE;
  break;
 case 128:
  if (!S_ISDIR(inode->i_mode))
   return acl ? -EACCES : 0;
  ea_name = SGI_ACL_DEFAULT;
  break;
 default:
  return -EINVAL;
 }

 if (acl) {
  struct xfs_acl *xfs_acl;
  int len = XFS_ACL_MAX_SIZE(ip->i_mount);

  xfs_acl = kmem_zalloc_large(len, 0);
  if (!xfs_acl)
   return -ENOMEM;

  xfs_acl_to_disk(xfs_acl, acl);


  len -= sizeof(struct xfs_acl_entry) *
    (XFS_ACL_MAX_ENTRIES(ip->i_mount) - acl->a_count);

  error = xfs_attr_set(ip, ea_name, (unsigned char *)xfs_acl,
    len, ATTR_ROOT);

  kmem_free(xfs_acl);
 } else {



  error = xfs_attr_remove(ip, ea_name, ATTR_ROOT);




  if (error == -ENOATTR)
   error = 0;
 }

 if (!error)
  set_cached_acl(inode, type, acl);
 return error;
}
