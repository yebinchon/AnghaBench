
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int dummy; } ;
struct ceph_osd_data {int dummy; } ;


 int extent ;
 int osd_data ;
 struct ceph_osd_data* osd_req_op_data (struct ceph_osd_request*,unsigned int,int ,int ) ;

struct ceph_osd_data *
osd_req_op_extent_osd_data(struct ceph_osd_request *osd_req,
   unsigned int which)
{
 return osd_req_op_data(osd_req, which, extent, osd_data);
}
