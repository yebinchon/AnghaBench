
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pagelist {int dummy; } ;
struct ceph_osd_data {struct ceph_pagelist* pagelist; int type; } ;


 int CEPH_OSD_DATA_TYPE_PAGELIST ;

__attribute__((used)) static void ceph_osd_data_pagelist_init(struct ceph_osd_data *osd_data,
   struct ceph_pagelist *pagelist)
{
 osd_data->type = CEPH_OSD_DATA_TYPE_PAGELIST;
 osd_data->pagelist = pagelist;
}
