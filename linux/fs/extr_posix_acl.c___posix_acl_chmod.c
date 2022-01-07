
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct posix_acl {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int __posix_acl_chmod_masq (struct posix_acl*,int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_release (struct posix_acl*) ;

int
__posix_acl_chmod(struct posix_acl **acl, gfp_t gfp, umode_t mode)
{
 struct posix_acl *clone = posix_acl_clone(*acl, gfp);
 int err = -ENOMEM;
 if (clone) {
  err = __posix_acl_chmod_masq(clone, mode);
  if (err) {
   posix_acl_release(clone);
   clone = ((void*)0);
  }
 }
 posix_acl_release(*acl);
 *acl = clone;
 return err;
}
