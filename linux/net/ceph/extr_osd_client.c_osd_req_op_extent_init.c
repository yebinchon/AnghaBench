
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ceph_osd_request {int dummy; } ;
struct TYPE_2__ {int truncate_seq; void* truncate_size; void* length; void* offset; } ;
struct ceph_osd_req_op {size_t indata_len; TYPE_1__ extent; } ;


 int BUG_ON (int) ;
 scalar_t__ CEPH_OSD_OP_READ ;
 scalar_t__ CEPH_OSD_OP_TRUNCATE ;
 scalar_t__ CEPH_OSD_OP_WRITE ;
 scalar_t__ CEPH_OSD_OP_WRITEFULL ;
 scalar_t__ CEPH_OSD_OP_ZERO ;
 struct ceph_osd_req_op* _osd_req_op_init (struct ceph_osd_request*,unsigned int,scalar_t__,int ) ;

void osd_req_op_extent_init(struct ceph_osd_request *osd_req,
    unsigned int which, u16 opcode,
    u64 offset, u64 length,
    u64 truncate_size, u32 truncate_seq)
{
 struct ceph_osd_req_op *op = _osd_req_op_init(osd_req, which,
            opcode, 0);
 size_t payload_len = 0;

 BUG_ON(opcode != CEPH_OSD_OP_READ && opcode != CEPH_OSD_OP_WRITE &&
        opcode != CEPH_OSD_OP_WRITEFULL && opcode != CEPH_OSD_OP_ZERO &&
        opcode != CEPH_OSD_OP_TRUNCATE);

 op->extent.offset = offset;
 op->extent.length = length;
 op->extent.truncate_size = truncate_size;
 op->extent.truncate_seq = truncate_seq;
 if (opcode == CEPH_OSD_OP_WRITE || opcode == CEPH_OSD_OP_WRITEFULL)
  payload_len += length;

 op->indata_len = payload_len;
}
