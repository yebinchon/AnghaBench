
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_file_layout_legacy {int fl_pg_pool; int fl_object_size; int fl_stripe_count; int fl_stripe_unit; } ;
struct ceph_file_layout {scalar_t__ stripe_unit; scalar_t__ stripe_count; scalar_t__ object_size; int pool_id; } ;


 void* le32_to_cpu (int ) ;

void ceph_file_layout_from_legacy(struct ceph_file_layout *fl,
      struct ceph_file_layout_legacy *legacy)
{
 fl->stripe_unit = le32_to_cpu(legacy->fl_stripe_unit);
 fl->stripe_count = le32_to_cpu(legacy->fl_stripe_count);
 fl->object_size = le32_to_cpu(legacy->fl_object_size);
 fl->pool_id = le32_to_cpu(legacy->fl_pg_pool);
 if (fl->pool_id == 0 && fl->stripe_unit == 0 &&
     fl->stripe_count == 0 && fl->object_size == 0)
  fl->pool_id = -1;
}
