
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_data {int type; } ;


 int CEPH_OSD_DATA_TYPE_NONE ;
 int memset (struct ceph_osd_data*,int ,int) ;

__attribute__((used)) static void ceph_osd_data_init(struct ceph_osd_data *osd_data)
{
 memset(osd_data, 0, sizeof (*osd_data));
 osd_data->type = CEPH_OSD_DATA_TYPE_NONE;
}
