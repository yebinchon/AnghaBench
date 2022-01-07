
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct ceph_osd_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ gen; int op; int cookie; } ;
struct ceph_osd_req_op {TYPE_1__ watch; } ;


 int CEPH_OSD_OP_WATCH ;
 struct ceph_osd_req_op* _osd_req_op_init (struct ceph_osd_request*,int,int ,int ) ;

__attribute__((used)) static void osd_req_op_watch_init(struct ceph_osd_request *req, int which,
      u64 cookie, u8 watch_opcode)
{
 struct ceph_osd_req_op *op;

 op = _osd_req_op_init(req, which, CEPH_OSD_OP_WATCH, 0);
 op->watch.cookie = cookie;
 op->watch.op = watch_opcode;
 op->watch.gen = 0;
}
