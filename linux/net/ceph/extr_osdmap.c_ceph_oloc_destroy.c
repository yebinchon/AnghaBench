
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_object_locator {int pool_ns; } ;


 int ceph_put_string (int ) ;

void ceph_oloc_destroy(struct ceph_object_locator *oloc)
{
 ceph_put_string(oloc->pool_ns);
}
