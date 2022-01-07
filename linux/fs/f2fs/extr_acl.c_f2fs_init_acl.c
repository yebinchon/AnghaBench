
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct page {int dummy; } ;
struct inode {int * i_acl; int * i_default_acl; int i_mode; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int __f2fs_set_acl (struct inode*,int ,struct posix_acl*,struct page*) ;
 int f2fs_acl_create (struct inode*,int *,struct posix_acl**,struct posix_acl**,struct page*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int posix_acl_release (struct posix_acl*) ;

int f2fs_init_acl(struct inode *inode, struct inode *dir, struct page *ipage,
       struct page *dpage)
{
 struct posix_acl *default_acl = ((void*)0), *acl = ((void*)0);
 int error = 0;

 error = f2fs_acl_create(dir, &inode->i_mode, &default_acl, &acl, dpage);
 if (error)
  return error;

 f2fs_mark_inode_dirty_sync(inode, 1);

 if (default_acl) {
  error = __f2fs_set_acl(inode, ACL_TYPE_DEFAULT, default_acl,
           ipage);
  posix_acl_release(default_acl);
 } else {
  inode->i_default_acl = ((void*)0);
 }
 if (acl) {
  if (!error)
   error = __f2fs_set_acl(inode, ACL_TYPE_ACCESS, acl,
            ipage);
  posix_acl_release(acl);
 } else {
  inode->i_acl = ((void*)0);
 }

 return error;
}
