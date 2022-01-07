
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int a_count; int a_refcount; } ;


 int refcount_set (int *,int) ;

void
posix_acl_init(struct posix_acl *acl, int count)
{
 refcount_set(&acl->a_refcount, 1);
 acl->a_count = count;
}
