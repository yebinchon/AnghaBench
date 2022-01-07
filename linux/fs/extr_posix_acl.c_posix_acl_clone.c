
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl_entry {int dummy; } ;
struct posix_acl {int a_count; int a_refcount; } ;
typedef int gfp_t ;


 struct posix_acl* kmemdup (struct posix_acl const*,int,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct posix_acl *
posix_acl_clone(const struct posix_acl *acl, gfp_t flags)
{
 struct posix_acl *clone = ((void*)0);

 if (acl) {
  int size = sizeof(struct posix_acl) + acl->a_count *
             sizeof(struct posix_acl_entry);
  clone = kmemdup(acl, size, flags);
  if (clone)
   refcount_set(&clone->a_refcount, 1);
 }
 return clone;
}
