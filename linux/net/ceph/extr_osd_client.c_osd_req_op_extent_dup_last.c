
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ceph_osd_request {unsigned int r_num_ops; struct ceph_osd_req_op* r_ops; } ;
struct TYPE_2__ {int length; int offset; } ;
struct ceph_osd_req_op {scalar_t__ op; int indata_len; TYPE_1__ extent; int outdata_len; int flags; } ;


 int BUG_ON (int) ;
 scalar_t__ CEPH_OSD_OP_WRITE ;
 scalar_t__ CEPH_OSD_OP_WRITEFULL ;
 struct ceph_osd_req_op* _osd_req_op_init (struct ceph_osd_request*,unsigned int,scalar_t__,int ) ;

void osd_req_op_extent_dup_last(struct ceph_osd_request *osd_req,
    unsigned int which, u64 offset_inc)
{
 struct ceph_osd_req_op *op, *prev_op;

 BUG_ON(which + 1 >= osd_req->r_num_ops);

 prev_op = &osd_req->r_ops[which];
 op = _osd_req_op_init(osd_req, which + 1, prev_op->op, prev_op->flags);

 op->indata_len = prev_op->indata_len;
 op->outdata_len = prev_op->outdata_len;
 op->extent = prev_op->extent;

 op->extent.offset += offset_inc;
 op->extent.length -= offset_inc;

 if (op->op == CEPH_OSD_OP_WRITE || op->op == CEPH_OSD_OP_WRITEFULL)
  op->indata_len -= offset_inc;
}
