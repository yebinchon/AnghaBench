
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;


 scalar_t__ ACL_NOT_CACHED ;
 scalar_t__ cmpxchg (struct posix_acl**,scalar_t__,struct posix_acl*) ;
 int current ;
 struct posix_acl* uncached_acl_sentinel (int ) ;

__attribute__((used)) static void nfs3_prepare_get_acl(struct posix_acl **p)
{
 struct posix_acl *sentinel = uncached_acl_sentinel(current);

 if (cmpxchg(p, ACL_NOT_CACHED, sentinel) != ACL_NOT_CACHED) {

 }
}
