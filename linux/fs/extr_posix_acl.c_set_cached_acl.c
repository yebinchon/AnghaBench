
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 struct posix_acl** acl_by_type (struct inode*,int) ;
 int is_uncached_acl (struct posix_acl*) ;
 int posix_acl_dup (struct posix_acl*) ;
 int posix_acl_release (struct posix_acl*) ;
 struct posix_acl* xchg (struct posix_acl**,int ) ;

void set_cached_acl(struct inode *inode, int type, struct posix_acl *acl)
{
 struct posix_acl **p = acl_by_type(inode, type);
 struct posix_acl *old;

 old = xchg(p, posix_acl_dup(acl));
 if (!is_uncached_acl(old))
  posix_acl_release(old);
}
