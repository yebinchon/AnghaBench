
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; } ;
typedef int handle_t ;




 int EACCES ;
 int EINVAL ;
 int EXT4_XATTR_INDEX_POSIX_ACL_ACCESS ;
 int EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ PTR_ERR (void*) ;
 int S_ISDIR (int ) ;
 void* ext4_acl_to_disk (struct posix_acl*,size_t*) ;
 int ext4_xattr_set_handle (int *,struct inode*,int,char*,void*,size_t,int) ;
 int kfree (void*) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static int
__ext4_set_acl(handle_t *handle, struct inode *inode, int type,
      struct posix_acl *acl, int xattr_flags)
{
 int name_index;
 void *value = ((void*)0);
 size_t size = 0;
 int error;

 switch (type) {
 case 129:
  name_index = EXT4_XATTR_INDEX_POSIX_ACL_ACCESS;
  break;

 case 128:
  name_index = EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT;
  if (!S_ISDIR(inode->i_mode))
   return acl ? -EACCES : 0;
  break;

 default:
  return -EINVAL;
 }
 if (acl) {
  value = ext4_acl_to_disk(acl, &size);
  if (IS_ERR(value))
   return (int)PTR_ERR(value);
 }

 error = ext4_xattr_set_handle(handle, inode, name_index, "",
          value, size, xattr_flags);

 kfree(value);
 if (!error) {
  set_cached_acl(inode, type, acl);
 }

 return error;
}
