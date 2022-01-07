
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct ceph_osd_request {int dummy; } ;
struct TYPE_2__ {void* expected_write_size; void* expected_object_size; } ;
struct ceph_osd_req_op {int flags; TYPE_1__ alloc_hint; } ;


 int CEPH_OSD_OP_FLAG_FAILOK ;
 int CEPH_OSD_OP_SETALLOCHINT ;
 struct ceph_osd_req_op* _osd_req_op_init (struct ceph_osd_request*,unsigned int,int ,int ) ;

void osd_req_op_alloc_hint_init(struct ceph_osd_request *osd_req,
    unsigned int which,
    u64 expected_object_size,
    u64 expected_write_size)
{
 struct ceph_osd_req_op *op = _osd_req_op_init(osd_req, which,
            CEPH_OSD_OP_SETALLOCHINT,
            0);

 op->alloc_hint.expected_object_size = expected_object_size;
 op->alloc_hint.expected_write_size = expected_write_size;






 op->flags |= CEPH_OSD_OP_FLAG_FAILOK;
}
