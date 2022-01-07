
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osds {scalar_t__ size; int primary; scalar_t__* osds; } ;


 scalar_t__ CRUSH_ITEM_NONE ;

__attribute__((used)) static bool osds_valid(const struct ceph_osds *set)
{

 if (set->size > 0 && set->primary >= 0)
  return 1;


 if (!set->size && set->primary == -1)
  return 1;


 if (set->size > 0 && set->primary == -1) {
  int i;

  for (i = 0; i < set->size; i++) {
   if (set->osds[i] != CRUSH_ITEM_NONE)
    break;
  }
  if (i == set->size)
   return 1;
 }

 return 0;
}
