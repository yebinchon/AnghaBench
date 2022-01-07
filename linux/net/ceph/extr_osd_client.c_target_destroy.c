
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request_target {int target_oloc; int target_oid; int base_oloc; int base_oid; } ;


 int ceph_oid_destroy (int *) ;
 int ceph_oloc_destroy (int *) ;

__attribute__((used)) static void target_destroy(struct ceph_osd_request_target *t)
{
 ceph_oid_destroy(&t->base_oid);
 ceph_oloc_destroy(&t->base_oloc);
 ceph_oid_destroy(&t->target_oid);
 ceph_oloc_destroy(&t->target_oloc);
}
