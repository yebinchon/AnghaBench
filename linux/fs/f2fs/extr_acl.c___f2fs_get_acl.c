
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int ENODATA ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int) ;
 int F2FS_I_SB (struct inode*) ;
 int F2FS_XATTR_INDEX_POSIX_ACL_ACCESS ;
 int F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT ;
 int GFP_F2FS_ZERO ;
 struct posix_acl* f2fs_acl_from_disk (void*,int) ;
 int f2fs_getxattr (struct inode*,int,char*,void*,int,struct page*) ;
 void* f2fs_kmalloc (int ,int,int ) ;
 int kvfree (void*) ;

__attribute__((used)) static struct posix_acl *__f2fs_get_acl(struct inode *inode, int type,
      struct page *dpage)
{
 int name_index = F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT;
 void *value = ((void*)0);
 struct posix_acl *acl;
 int retval;

 if (type == ACL_TYPE_ACCESS)
  name_index = F2FS_XATTR_INDEX_POSIX_ACL_ACCESS;

 retval = f2fs_getxattr(inode, name_index, "", ((void*)0), 0, dpage);
 if (retval > 0) {
  value = f2fs_kmalloc(F2FS_I_SB(inode), retval, GFP_F2FS_ZERO);
  if (!value)
   return ERR_PTR(-ENOMEM);
  retval = f2fs_getxattr(inode, name_index, "", value,
       retval, dpage);
 }

 if (retval > 0)
  acl = f2fs_acl_from_disk(value, retval);
 else if (retval == -ENODATA)
  acl = ((void*)0);
 else
  acl = ERR_PTR(retval);
 kvfree(value);

 return acl;
}
