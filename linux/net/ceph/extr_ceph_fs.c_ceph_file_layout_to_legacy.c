
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_file_layout_legacy {void* fl_pg_pool; void* fl_object_size; void* fl_stripe_count; void* fl_stripe_unit; } ;
struct ceph_file_layout {scalar_t__ stripe_unit; scalar_t__ stripe_count; scalar_t__ object_size; scalar_t__ pool_id; } ;


 void* cpu_to_le32 (scalar_t__) ;

void ceph_file_layout_to_legacy(struct ceph_file_layout *fl,
    struct ceph_file_layout_legacy *legacy)
{
 legacy->fl_stripe_unit = cpu_to_le32(fl->stripe_unit);
 legacy->fl_stripe_count = cpu_to_le32(fl->stripe_count);
 legacy->fl_object_size = cpu_to_le32(fl->object_size);
 if (fl->pool_id >= 0)
  legacy->fl_pg_pool = cpu_to_le32(fl->pool_id);
 else
  legacy->fl_pg_pool = 0;
}
