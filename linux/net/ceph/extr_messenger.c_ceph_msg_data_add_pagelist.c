
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pagelist {scalar_t__ length; int refcnt; } ;
struct ceph_msg_data {struct ceph_pagelist* pagelist; int type; } ;
struct ceph_msg {int data_length; } ;


 int BUG_ON (int) ;
 int CEPH_MSG_DATA_PAGELIST ;
 struct ceph_msg_data* ceph_msg_data_add (struct ceph_msg*) ;
 int refcount_inc (int *) ;

void ceph_msg_data_add_pagelist(struct ceph_msg *msg,
    struct ceph_pagelist *pagelist)
{
 struct ceph_msg_data *data;

 BUG_ON(!pagelist);
 BUG_ON(!pagelist->length);

 data = ceph_msg_data_add(msg);
 data->type = CEPH_MSG_DATA_PAGELIST;
 refcount_inc(&pagelist->refcnt);
 data->pagelist = pagelist;

 msg->data_length += pagelist->length;
}
