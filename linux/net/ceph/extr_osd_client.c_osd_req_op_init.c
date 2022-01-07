
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ceph_osd_request {int dummy; } ;


 int _osd_req_op_init (struct ceph_osd_request*,unsigned int,int ,int ) ;

void osd_req_op_init(struct ceph_osd_request *osd_req,
       unsigned int which, u16 opcode, u32 flags)
{
 (void)_osd_req_op_init(osd_req, which, opcode, flags);
}
