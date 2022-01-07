
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_file_layout {int stripe_unit; int stripe_count; int object_size; } ;
typedef int __u32 ;


 int CEPH_MIN_STRIPE_UNIT ;

int ceph_file_layout_is_valid(const struct ceph_file_layout *layout)
{
 __u32 su = layout->stripe_unit;
 __u32 sc = layout->stripe_count;
 __u32 os = layout->object_size;


 if (!su || (su & (CEPH_MIN_STRIPE_UNIT-1)))
  return 0;
 if (!os || (os & (CEPH_MIN_STRIPE_UNIT-1)))
  return 0;

 if (os < su || os % su)
  return 0;

 if (!sc)
  return 0;
 return 1;
}
