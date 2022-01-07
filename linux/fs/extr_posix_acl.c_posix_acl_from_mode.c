
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct posix_acl {TYPE_1__* a_entries; } ;
typedef int gfp_t ;
struct TYPE_2__ {int e_perm; int e_tag; } ;


 int ACL_GROUP_OBJ ;
 int ACL_OTHER ;
 int ACL_USER_OBJ ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int ) ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 struct posix_acl* posix_acl_alloc (int,int ) ;

struct posix_acl *
posix_acl_from_mode(umode_t mode, gfp_t flags)
{
 struct posix_acl *acl = posix_acl_alloc(3, flags);
 if (!acl)
  return ERR_PTR(-ENOMEM);

 acl->a_entries[0].e_tag = ACL_USER_OBJ;
 acl->a_entries[0].e_perm = (mode & S_IRWXU) >> 6;

 acl->a_entries[1].e_tag = ACL_GROUP_OBJ;
 acl->a_entries[1].e_perm = (mode & S_IRWXG) >> 3;

 acl->a_entries[2].e_tag = ACL_OTHER;
 acl->a_entries[2].e_perm = (mode & S_IRWXO);
 return acl;
}
