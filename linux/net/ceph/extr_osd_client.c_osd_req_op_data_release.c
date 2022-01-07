
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ceph_osd_request {unsigned int r_num_ops; struct ceph_osd_req_op* r_ops; } ;
struct TYPE_14__ {int osd_data; } ;
struct TYPE_13__ {int response_data; } ;
struct TYPE_12__ {int response_data; int request_data; } ;
struct TYPE_11__ {int request_data; } ;
struct TYPE_10__ {int osd_data; } ;
struct TYPE_9__ {int response_data; int request_data; int request_info; } ;
struct TYPE_8__ {int osd_data; } ;
struct ceph_osd_req_op {int op; TYPE_7__ copy_from; TYPE_6__ list_watchers; TYPE_5__ notify; TYPE_4__ notify_ack; int raw_data_in; TYPE_3__ xattr; TYPE_2__ cls; TYPE_1__ extent; } ;


 int BUG_ON (int) ;
 int ceph_osd_data_release (int *) ;

__attribute__((used)) static void osd_req_op_data_release(struct ceph_osd_request *osd_req,
   unsigned int which)
{
 struct ceph_osd_req_op *op;

 BUG_ON(which >= osd_req->r_num_ops);
 op = &osd_req->r_ops[which];

 switch (op->op) {
 case 132:
 case 129:
 case 128:
  ceph_osd_data_release(&op->extent.osd_data);
  break;
 case 138:
  ceph_osd_data_release(&op->cls.request_info);
  ceph_osd_data_release(&op->cls.request_data);
  ceph_osd_data_release(&op->cls.response_data);
  break;
 case 131:
 case 137:
  ceph_osd_data_release(&op->xattr.osd_data);
  break;
 case 130:
  ceph_osd_data_release(&op->raw_data_in);
  break;
 case 133:
  ceph_osd_data_release(&op->notify_ack.request_data);
  break;
 case 134:
  ceph_osd_data_release(&op->notify.request_data);
  ceph_osd_data_release(&op->notify.response_data);
  break;
 case 135:
  ceph_osd_data_release(&op->list_watchers.response_data);
  break;
 case 136:
  ceph_osd_data_release(&op->copy_from.osd_data);
  break;
 default:
  break;
 }
}
