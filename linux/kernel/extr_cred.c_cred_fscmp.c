
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {int ngroups; int * gid; } ;
struct cred {struct group_info* group_info; int fsgid; int fsuid; } ;


 scalar_t__ gid_gt (int ,int ) ;
 scalar_t__ gid_lt (int ,int ) ;
 scalar_t__ uid_gt (int ,int ) ;
 scalar_t__ uid_lt (int ,int ) ;

int cred_fscmp(const struct cred *a, const struct cred *b)
{
 struct group_info *ga, *gb;
 int g;

 if (a == b)
  return 0;
 if (uid_lt(a->fsuid, b->fsuid))
  return -1;
 if (uid_gt(a->fsuid, b->fsuid))
  return 1;

 if (gid_lt(a->fsgid, b->fsgid))
  return -1;
 if (gid_gt(a->fsgid, b->fsgid))
  return 1;

 ga = a->group_info;
 gb = b->group_info;
 if (ga == gb)
  return 0;
 if (ga == ((void*)0))
  return -1;
 if (gb == ((void*)0))
  return 1;
 if (ga->ngroups < gb->ngroups)
  return -1;
 if (ga->ngroups > gb->ngroups)
  return 1;

 for (g = 0; g < ga->ngroups; g++) {
  if (gid_lt(ga->gid[g], gb->gid[g]))
   return -1;
  if (gid_gt(ga->gid[g], gb->gid[g]))
   return 1;
 }
 return 0;
}
