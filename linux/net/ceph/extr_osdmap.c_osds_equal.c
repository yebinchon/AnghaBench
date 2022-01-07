
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osds {scalar_t__ primary; } ;


 scalar_t__ __osds_equal (struct ceph_osds const*,struct ceph_osds const*) ;

__attribute__((used)) static bool osds_equal(const struct ceph_osds *lhs,
         const struct ceph_osds *rhs)
{
 if (__osds_equal(lhs, rhs) &&
     lhs->primary == rhs->primary)
  return 1;

 return 0;
}
