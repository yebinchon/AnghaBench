
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request_target {int osd; int last_force_resend; int epoch; int paused; int flags; int sort_bitwise; int min_size; int size; int up; int acting; int pg_num_mask; int pg_num; int spgid; int pgid; int target_oloc; int target_oid; int base_oloc; int base_oid; } ;


 int ceph_oid_copy (int *,int *) ;
 int ceph_oloc_copy (int *,int *) ;
 int ceph_osds_copy (int *,int *) ;

__attribute__((used)) static void target_copy(struct ceph_osd_request_target *dest,
   const struct ceph_osd_request_target *src)
{
 ceph_oid_copy(&dest->base_oid, &src->base_oid);
 ceph_oloc_copy(&dest->base_oloc, &src->base_oloc);
 ceph_oid_copy(&dest->target_oid, &src->target_oid);
 ceph_oloc_copy(&dest->target_oloc, &src->target_oloc);

 dest->pgid = src->pgid;
 dest->spgid = src->spgid;
 dest->pg_num = src->pg_num;
 dest->pg_num_mask = src->pg_num_mask;
 ceph_osds_copy(&dest->acting, &src->acting);
 ceph_osds_copy(&dest->up, &src->up);
 dest->size = src->size;
 dest->min_size = src->min_size;
 dest->sort_bitwise = src->sort_bitwise;

 dest->flags = src->flags;
 dest->paused = src->paused;

 dest->epoch = src->epoch;
 dest->last_force_resend = src->last_force_resend;

 dest->osd = src->osd;
}
