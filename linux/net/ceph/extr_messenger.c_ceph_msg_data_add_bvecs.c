
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bi_size; } ;
struct ceph_bvec_iter {TYPE_1__ iter; } ;
struct ceph_msg_data {struct ceph_bvec_iter bvec_pos; int type; } ;
struct ceph_msg {int data_length; } ;


 int CEPH_MSG_DATA_BVECS ;
 struct ceph_msg_data* ceph_msg_data_add (struct ceph_msg*) ;

void ceph_msg_data_add_bvecs(struct ceph_msg *msg,
        struct ceph_bvec_iter *bvec_pos)
{
 struct ceph_msg_data *data;

 data = ceph_msg_data_add(msg);
 data->type = CEPH_MSG_DATA_BVECS;
 data->bvec_pos = *bvec_pos;

 msg->data_length += bvec_pos->iter.bi_size;
}
