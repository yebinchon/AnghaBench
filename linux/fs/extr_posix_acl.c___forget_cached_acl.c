
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;


 int ACL_NOT_CACHED ;
 int is_uncached_acl (struct posix_acl*) ;
 int posix_acl_release (struct posix_acl*) ;
 struct posix_acl* xchg (struct posix_acl**,int ) ;

__attribute__((used)) static void __forget_cached_acl(struct posix_acl **p)
{
 struct posix_acl *old;

 old = xchg(p, ACL_NOT_CACHED);
 if (!is_uncached_acl(old))
  posix_acl_release(old);
}
