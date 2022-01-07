
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pagelist {int dummy; } ;
struct ceph_osd_request {int dummy; } ;
struct ceph_osd_data {int dummy; } ;


 int ceph_osd_data_pagelist_init (struct ceph_osd_data*,struct ceph_pagelist*) ;
 int cls ;
 struct ceph_osd_data* osd_req_op_data (struct ceph_osd_request*,unsigned int,int ,int ) ;
 int request_info ;

__attribute__((used)) static void osd_req_op_cls_request_info_pagelist(
   struct ceph_osd_request *osd_req,
   unsigned int which, struct ceph_pagelist *pagelist)
{
 struct ceph_osd_data *osd_data;

 osd_data = osd_req_op_data(osd_req, which, cls, request_info);
 ceph_osd_data_pagelist_init(osd_data, pagelist);
}
