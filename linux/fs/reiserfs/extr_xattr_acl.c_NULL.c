
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;




 int BUG () ;
 int ENODATA ;
 int ENOMEM ;
 int ENOSYS ;
 struct posix_acl* ERR_PTR (int) ;
 int GFP_NOFS ;
 char* XATTR_NAME_POSIX_ACL_ACCESS ;
 char* XATTR_NAME_POSIX_ACL_DEFAULT ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 struct posix_acl* reiserfs_posix_acl_from_disk (char*,int) ;
 int reiserfs_xattr_get (struct inode*,char*,char*,int) ;

struct posix_acl *reiserfs_get_acl(struct inode *inode, int type)
{
 char *name, *value;
 struct posix_acl *acl;
 int size;
 int retval;

 switch (type) {
 case 129:
  name = XATTR_NAME_POSIX_ACL_ACCESS;
  break;
 case 128:
  name = XATTR_NAME_POSIX_ACL_DEFAULT;
  break;
 default:
  BUG();
 }

 size = reiserfs_xattr_get(inode, name, ((void*)0), 0);
 if (size < 0) {
  if (size == -ENODATA || size == -ENOSYS)
   return ((void*)0);
  return ERR_PTR(size);
 }

 value = kmalloc(size, GFP_NOFS);
 if (!value)
  return ERR_PTR(-ENOMEM);

 retval = reiserfs_xattr_get(inode, name, value, size);
 if (retval == -ENODATA || retval == -ENOSYS) {




  acl = ((void*)0);
 } else if (retval < 0) {
  acl = ERR_PTR(retval);
 } else {
  acl = reiserfs_posix_acl_from_disk(value, retval);
 }

 kfree(value);
 return acl;
}
