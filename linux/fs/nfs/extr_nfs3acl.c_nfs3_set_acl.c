
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; } ;




 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISDIR (int ) ;
 int __nfs3_proc_setacls (struct inode*,struct posix_acl*,struct posix_acl*) ;
 struct posix_acl* get_acl (struct inode*,int const) ;
 struct posix_acl* posix_acl_from_mode (int ,int ) ;
 int posix_acl_release (struct posix_acl*) ;

int nfs3_set_acl(struct inode *inode, struct posix_acl *acl, int type)
{
 struct posix_acl *alloc = ((void*)0), *dfacl = ((void*)0);
 int status;

 if (S_ISDIR(inode->i_mode)) {
  switch(type) {
  case 129:
   alloc = dfacl = get_acl(inode, 128);
   if (IS_ERR(alloc))
    goto fail;
   break;

  case 128:
   dfacl = acl;
   alloc = acl = get_acl(inode, 129);
   if (IS_ERR(alloc))
    goto fail;
   break;
  }
 }

 if (acl == ((void*)0)) {
  alloc = acl = posix_acl_from_mode(inode->i_mode, GFP_KERNEL);
  if (IS_ERR(alloc))
   goto fail;
 }
 status = __nfs3_proc_setacls(inode, acl, dfacl);
 posix_acl_release(alloc);
 return status;

fail:
 return PTR_ERR(alloc);
}
