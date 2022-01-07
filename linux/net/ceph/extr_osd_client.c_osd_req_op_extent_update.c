
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ceph_osd_request {unsigned int r_num_ops; struct ceph_osd_req_op* r_ops; } ;
struct TYPE_2__ {scalar_t__ length; } ;
struct ceph_osd_req_op {scalar_t__ op; int indata_len; TYPE_1__ extent; } ;


 int BUG_ON (int) ;
 scalar_t__ CEPH_OSD_OP_WRITE ;
 scalar_t__ CEPH_OSD_OP_WRITEFULL ;

void osd_req_op_extent_update(struct ceph_osd_request *osd_req,
    unsigned int which, u64 length)
{
 struct ceph_osd_req_op *op;
 u64 previous;

 BUG_ON(which >= osd_req->r_num_ops);
 op = &osd_req->r_ops[which];
 previous = op->extent.length;

 if (length == previous)
  return;
 BUG_ON(length > previous);

 op->extent.length = length;
 if (op->op == CEPH_OSD_OP_WRITE || op->op == CEPH_OSD_OP_WRITEFULL)
  op->indata_len -= previous - length;
}
