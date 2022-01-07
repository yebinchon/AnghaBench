
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg_data {scalar_t__ type; int pagelist; } ;


 scalar_t__ CEPH_MSG_DATA_PAGELIST ;
 int ceph_pagelist_release (int ) ;

__attribute__((used)) static void ceph_msg_data_destroy(struct ceph_msg_data *data)
{
 if (data->type == CEPH_MSG_DATA_PAGELIST)
  ceph_pagelist_release(data->pagelist);
}
