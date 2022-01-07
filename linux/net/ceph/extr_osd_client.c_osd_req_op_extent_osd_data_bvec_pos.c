
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int dummy; } ;
struct ceph_osd_data {int dummy; } ;
struct ceph_bvec_iter {int dummy; } ;


 int ceph_osd_data_bvecs_init (struct ceph_osd_data*,struct ceph_bvec_iter*,int ) ;
 int extent ;
 struct ceph_osd_data* osd_req_op_data (struct ceph_osd_request*,unsigned int,int ,struct ceph_osd_data*) ;

void osd_req_op_extent_osd_data_bvec_pos(struct ceph_osd_request *osd_req,
      unsigned int which,
      struct ceph_bvec_iter *bvec_pos)
{
 struct ceph_osd_data *osd_data;

 osd_data = osd_req_op_data(osd_req, which, extent, osd_data);
 ceph_osd_data_bvecs_init(osd_data, bvec_pos, 0);
}
