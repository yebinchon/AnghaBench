
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_bvec_iter {int dummy; } ;
struct ceph_osd_data {int num_bvecs; struct ceph_bvec_iter bvec_pos; int type; } ;


 int CEPH_OSD_DATA_TYPE_BVECS ;

__attribute__((used)) static void ceph_osd_data_bvecs_init(struct ceph_osd_data *osd_data,
         struct ceph_bvec_iter *bvec_pos,
         u32 num_bvecs)
{
 osd_data->type = CEPH_OSD_DATA_TYPE_BVECS;
 osd_data->bvec_pos = *bvec_pos;
 osd_data->num_bvecs = num_bvecs;
}
