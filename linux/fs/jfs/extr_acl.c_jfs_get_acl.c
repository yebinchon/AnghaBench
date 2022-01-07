
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;




 int EINVAL ;
 int ENODATA ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 char* XATTR_NAME_POSIX_ACL_ACCESS ;
 char* XATTR_NAME_POSIX_ACL_DEFAULT ;
 int __jfs_getxattr (struct inode*,char*,char*,int) ;
 int init_user_ns ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 struct posix_acl* posix_acl_from_xattr (int *,char*,int) ;

struct posix_acl *jfs_get_acl(struct inode *inode, int type)
{
 struct posix_acl *acl;
 char *ea_name;
 int size;
 char *value = ((void*)0);

 switch(type) {
  case 129:
   ea_name = XATTR_NAME_POSIX_ACL_ACCESS;
   break;
  case 128:
   ea_name = XATTR_NAME_POSIX_ACL_DEFAULT;
   break;
  default:
   return ERR_PTR(-EINVAL);
 }

 size = __jfs_getxattr(inode, ea_name, ((void*)0), 0);

 if (size > 0) {
  value = kmalloc(size, GFP_KERNEL);
  if (!value)
   return ERR_PTR(-ENOMEM);
  size = __jfs_getxattr(inode, ea_name, value, size);
 }

 if (size < 0) {
  if (size == -ENODATA)
   acl = ((void*)0);
  else
   acl = ERR_PTR(size);
 } else {
  acl = posix_acl_from_xattr(&init_user_ns, value, size);
 }
 kfree(value);
 return acl;
}
