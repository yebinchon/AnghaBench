
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_info {unsigned int ngroups; int * gid; } ;
typedef int kgid_t ;


 scalar_t__ gid_gt (int ,int ) ;
 scalar_t__ gid_lt (int ,int ) ;

int groups_search(const struct group_info *group_info, kgid_t grp)
{
 unsigned int left, right;

 if (!group_info)
  return 0;

 left = 0;
 right = group_info->ngroups;
 while (left < right) {
  unsigned int mid = (left+right)/2;
  if (gid_gt(grp, group_info->gid[mid]))
   left = mid + 1;
  else if (gid_lt(grp, group_info->gid[mid]))
   right = mid;
  else
   return 1;
 }
 return 0;
}
