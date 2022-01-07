
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ceph_osd_request {unsigned int r_num_ops; struct ceph_osd_req_op* r_ops; } ;
struct ceph_osd_req_op {int flags; int op; } ;


 int BUG_ON (int) ;
 int memset (struct ceph_osd_req_op*,int ,int) ;
 int osd_req_opcode_valid (int ) ;

__attribute__((used)) static struct ceph_osd_req_op *
_osd_req_op_init(struct ceph_osd_request *osd_req, unsigned int which,
   u16 opcode, u32 flags)
{
 struct ceph_osd_req_op *op;

 BUG_ON(which >= osd_req->r_num_ops);
 BUG_ON(!osd_req_opcode_valid(opcode));

 op = &osd_req->r_ops[which];
 memset(op, 0, sizeof (*op));
 op->op = opcode;
 op->flags = flags;

 return op;
}
