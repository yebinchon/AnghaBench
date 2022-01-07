
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_osd_request {unsigned int r_num_ops; TYPE_1__* r_ops; } ;
struct ceph_osd_data {int dummy; } ;
struct TYPE_2__ {struct ceph_osd_data raw_data_in; } ;


 int BUG_ON (int) ;

__attribute__((used)) static struct ceph_osd_data *
osd_req_op_raw_data_in(struct ceph_osd_request *osd_req, unsigned int which)
{
 BUG_ON(which >= osd_req->r_num_ops);

 return &osd_req->r_ops[which].raw_data_in;
}
