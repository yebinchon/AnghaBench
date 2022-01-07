
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl_entry {int dummy; } ;
struct posix_acl {int dummy; } ;
typedef int gfp_t ;


 struct posix_acl* kmalloc (size_t const,int ) ;
 int posix_acl_init (struct posix_acl*,int) ;

struct posix_acl *
posix_acl_alloc(int count, gfp_t flags)
{
 const size_t size = sizeof(struct posix_acl) +
                     count * sizeof(struct posix_acl_entry);
 struct posix_acl *acl = kmalloc(size, flags);
 if (acl)
  posix_acl_init(acl, count);
 return acl;
}
