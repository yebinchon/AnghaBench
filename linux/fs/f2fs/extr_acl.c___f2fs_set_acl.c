
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct posix_acl {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_mode; } ;




 int EACCES ;
 int EINVAL ;
 int F2FS_I_SB (struct inode*) ;
 int F2FS_XATTR_INDEX_POSIX_ACL_ACCESS ;
 int F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT ;
 int FI_ACL_MODE ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int S_ISDIR (int ) ;
 int clear_inode_flag (struct inode*,int ) ;
 void* f2fs_acl_to_disk (int ,struct posix_acl*,size_t*) ;
 int f2fs_setxattr (struct inode*,int,char*,void*,size_t,struct page*,int ) ;
 int kvfree (void*) ;
 int posix_acl_update_mode (struct inode*,int *,struct posix_acl**) ;
 int set_acl_inode (struct inode*,int ) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static int __f2fs_set_acl(struct inode *inode, int type,
   struct posix_acl *acl, struct page *ipage)
{
 int name_index;
 void *value = ((void*)0);
 size_t size = 0;
 int error;
 umode_t mode = inode->i_mode;

 switch (type) {
 case 129:
  name_index = F2FS_XATTR_INDEX_POSIX_ACL_ACCESS;
  if (acl && !ipage) {
   error = posix_acl_update_mode(inode, &mode, &acl);
   if (error)
    return error;
   set_acl_inode(inode, mode);
  }
  break;

 case 128:
  name_index = F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT;
  if (!S_ISDIR(inode->i_mode))
   return acl ? -EACCES : 0;
  break;

 default:
  return -EINVAL;
 }

 if (acl) {
  value = f2fs_acl_to_disk(F2FS_I_SB(inode), acl, &size);
  if (IS_ERR(value)) {
   clear_inode_flag(inode, FI_ACL_MODE);
   return PTR_ERR(value);
  }
 }

 error = f2fs_setxattr(inode, name_index, "", value, size, ipage, 0);

 kvfree(value);
 if (!error)
  set_cached_acl(inode, type, acl);

 clear_inode_flag(inode, FI_ACL_MODE);
 return error;
}
