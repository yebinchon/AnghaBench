
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {TYPE_1__* group_info; int fsgid; int fsuid; } ;
struct TYPE_2__ {int ngroups; int * gid; } ;


 int gid_eq (int ,int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static bool
nfsd_match_cred(const struct cred *c1, const struct cred *c2)
{
 int i;

 if (!uid_eq(c1->fsuid, c2->fsuid))
  return 0;
 if (!gid_eq(c1->fsgid, c2->fsgid))
  return 0;
 if (c1->group_info == ((void*)0) || c2->group_info == ((void*)0))
  return c1->group_info == c2->group_info;
 if (c1->group_info->ngroups != c2->group_info->ngroups)
  return 0;
 for (i = 0; i < c1->group_info->ngroups; i++) {
  if (!gid_eq(c1->group_info->gid[i], c2->group_info->gid[i]))
   return 0;
 }
 return 1;
}
