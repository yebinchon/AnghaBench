
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ceph_timespec {int dummy; } ;
struct TYPE_6__ {scalar_t__ name_len; } ;
struct ceph_osd_request {int r_num_ops; struct ceph_msg* r_reply; scalar_t__ r_mempool; TYPE_3__ r_base_oid; struct ceph_msg* r_request; TYPE_1__* r_snapc; int r_base_oloc; struct ceph_osd_client* r_osdc; } ;
struct ceph_osd_reqid {int dummy; } ;
struct ceph_osd_op {int dummy; } ;
struct ceph_osd_client {int msgpool_op_reply; int msgpool_op; } ;
struct TYPE_5__ {int iov_len; int iov_base; } ;
struct ceph_msg {TYPE_2__ front; } ;
struct ceph_blkin_trace_info {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {int num_snaps; } ;


 int CEPH_ENCODING_START_BLK_LEN ;
 int CEPH_MSG_OSD_OP ;
 int CEPH_MSG_OSD_OPREPLY ;
 int CEPH_PGID_ENCODING_LEN ;
 int ENOMEM ;
 int OSD_OPREPLY_FRONT_LEN ;
 int WARN_ON (int) ;
 struct ceph_msg* ceph_msg_new2 (int ,int,int,int ,int) ;
 struct ceph_msg* ceph_msgpool_get (int *,int,int) ;
 int ceph_oid_empty (TYPE_3__*) ;
 int ceph_oloc_empty (int *) ;
 scalar_t__ ceph_oloc_encoding_size (int *) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int __ceph_osdc_alloc_messages(struct ceph_osd_request *req, gfp_t gfp,
          int num_request_data_items,
          int num_reply_data_items)
{
 struct ceph_osd_client *osdc = req->r_osdc;
 struct ceph_msg *msg;
 int msg_size;

 WARN_ON(req->r_request || req->r_reply);
 WARN_ON(ceph_oid_empty(&req->r_base_oid));
 WARN_ON(ceph_oloc_empty(&req->r_base_oloc));


 msg_size = CEPH_ENCODING_START_BLK_LEN +
   CEPH_PGID_ENCODING_LEN + 1;
 msg_size += 4 + 4 + 4;
 msg_size += CEPH_ENCODING_START_BLK_LEN +
   sizeof(struct ceph_osd_reqid);
 msg_size += sizeof(struct ceph_blkin_trace_info);
 msg_size += 4 + sizeof(struct ceph_timespec);
 msg_size += CEPH_ENCODING_START_BLK_LEN +
   ceph_oloc_encoding_size(&req->r_base_oloc);
 msg_size += 4 + req->r_base_oid.name_len;
 msg_size += 2 + req->r_num_ops * sizeof(struct ceph_osd_op);
 msg_size += 8;
 msg_size += 8;
 msg_size += 4 + 8 * (req->r_snapc ? req->r_snapc->num_snaps : 0);
 msg_size += 4 + 8;

 if (req->r_mempool)
  msg = ceph_msgpool_get(&osdc->msgpool_op, msg_size,
           num_request_data_items);
 else
  msg = ceph_msg_new2(CEPH_MSG_OSD_OP, msg_size,
        num_request_data_items, gfp, 1);
 if (!msg)
  return -ENOMEM;

 memset(msg->front.iov_base, 0, msg->front.iov_len);
 req->r_request = msg;


 msg_size = OSD_OPREPLY_FRONT_LEN;
 msg_size += req->r_base_oid.name_len;
 msg_size += req->r_num_ops * sizeof(struct ceph_osd_op);

 if (req->r_mempool)
  msg = ceph_msgpool_get(&osdc->msgpool_op_reply, msg_size,
           num_reply_data_items);
 else
  msg = ceph_msg_new2(CEPH_MSG_OSD_OPREPLY, msg_size,
        num_reply_data_items, gfp, 1);
 if (!msg)
  return -ENOMEM;

 req->r_reply = msg;

 return 0;
}
