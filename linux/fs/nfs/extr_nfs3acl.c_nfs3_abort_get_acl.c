
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;


 int ACL_NOT_CACHED ;
 int cmpxchg (struct posix_acl**,struct posix_acl*,int ) ;
 int current ;
 struct posix_acl* uncached_acl_sentinel (int ) ;

__attribute__((used)) static void nfs3_abort_get_acl(struct posix_acl **p)
{
 struct posix_acl *sentinel = uncached_acl_sentinel(current);


 cmpxchg(p, sentinel, ACL_NOT_CACHED);
}
