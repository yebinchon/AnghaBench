
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osds {int dummy; } ;


 int __osds_equal (struct ceph_osds const*,struct ceph_osds const*) ;
 scalar_t__ primary_changed (struct ceph_osds const*,struct ceph_osds const*) ;

bool ceph_osds_changed(const struct ceph_osds *old_acting,
         const struct ceph_osds *new_acting,
         bool any_change)
{
 if (primary_changed(old_acting, new_acting))
  return 1;

 if (any_change && !__osds_equal(old_acting, new_acting))
  return 1;

 return 0;
}
