
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;


 struct posix_acl* cmpxchg (struct posix_acl**,struct posix_acl*,struct posix_acl*) ;
 int current ;
 int posix_acl_dup (struct posix_acl*) ;
 int posix_acl_release (struct posix_acl*) ;
 struct posix_acl* uncached_acl_sentinel (int ) ;

__attribute__((used)) static void nfs3_complete_get_acl(struct posix_acl **p, struct posix_acl *acl)
{
 struct posix_acl *sentinel = uncached_acl_sentinel(current);


 posix_acl_dup(acl);
 if (cmpxchg(p, sentinel, acl) != sentinel)
  posix_acl_release(acl);
}
