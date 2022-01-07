
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_pagelist {scalar_t__ length; } ;
struct ceph_osd_request {TYPE_2__* r_ops; } ;
struct ceph_osd_data {int dummy; } ;
struct TYPE_3__ {int indata_len; } ;
struct TYPE_4__ {int indata_len; TYPE_1__ cls; } ;


 int ceph_osd_data_pagelist_init (struct ceph_osd_data*,struct ceph_pagelist*) ;
 int cls ;
 struct ceph_osd_data* osd_req_op_data (struct ceph_osd_request*,unsigned int,int ,int ) ;
 int request_data ;

void osd_req_op_cls_request_data_pagelist(
   struct ceph_osd_request *osd_req,
   unsigned int which, struct ceph_pagelist *pagelist)
{
 struct ceph_osd_data *osd_data;

 osd_data = osd_req_op_data(osd_req, which, cls, request_data);
 ceph_osd_data_pagelist_init(osd_data, pagelist);
 osd_req->r_ops[which].cls.indata_len += pagelist->length;
 osd_req->r_ops[which].indata_len += pagelist->length;
}
