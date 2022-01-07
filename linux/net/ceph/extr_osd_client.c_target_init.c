
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request_target {int size; int min_size; int osd; int up; int acting; int target_oloc; int target_oid; int base_oloc; int base_oid; } ;


 int CEPH_HOMELESS_OSD ;
 int ceph_oid_init (int *) ;
 int ceph_oloc_init (int *) ;
 int ceph_osds_init (int *) ;

__attribute__((used)) static void target_init(struct ceph_osd_request_target *t)
{
 ceph_oid_init(&t->base_oid);
 ceph_oloc_init(&t->base_oloc);
 ceph_oid_init(&t->target_oid);
 ceph_oloc_init(&t->target_oloc);

 ceph_osds_init(&t->acting);
 ceph_osds_init(&t->up);
 t->size = -1;
 t->min_size = -1;

 t->osd = CEPH_HOMELESS_OSD;
}
