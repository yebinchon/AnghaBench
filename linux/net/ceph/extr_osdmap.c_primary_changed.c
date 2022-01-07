
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osds {scalar_t__ primary; int size; } ;


 scalar_t__ calc_pg_rank (scalar_t__,struct ceph_osds const*) ;

__attribute__((used)) static bool primary_changed(const struct ceph_osds *old_acting,
       const struct ceph_osds *new_acting)
{
 if (!old_acting->size && !new_acting->size)
  return 0;

 if (!old_acting->size ^ !new_acting->size)
  return 1;

 if (old_acting->primary != new_acting->primary)
  return 1;

 if (calc_pg_rank(old_acting->primary, old_acting) !=
     calc_pg_rank(new_acting->primary, new_acting))
  return 1;

 return 0;
}
