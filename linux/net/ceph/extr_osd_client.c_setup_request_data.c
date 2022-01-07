
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


struct ceph_osd_request {size_t r_num_ops; struct ceph_osd_req_op* r_ops; struct ceph_msg* r_reply; struct ceph_msg* r_request; } ;
struct TYPE_14__ {int response_data; int request_data; } ;
struct TYPE_13__ {int response_data; int request_data; int request_info; scalar_t__ indata_len; scalar_t__ method_len; scalar_t__ class_len; } ;
struct TYPE_12__ {int response_data; } ;
struct TYPE_11__ {int osd_data; scalar_t__ length; } ;
struct TYPE_10__ {int osd_data; } ;
struct TYPE_9__ {int request_data; } ;
struct TYPE_8__ {int osd_data; scalar_t__ value_len; scalar_t__ name_len; } ;
struct ceph_osd_req_op {int op; TYPE_7__ notify; TYPE_6__ cls; scalar_t__ indata_len; TYPE_5__ list_watchers; TYPE_4__ extent; int raw_data_in; TYPE_3__ copy_from; TYPE_2__ notify_ack; TYPE_1__ xattr; } ;
struct ceph_msg {scalar_t__ data_length; scalar_t__ num_data_items; } ;
 int WARN_ON (int) ;
 int ceph_osdc_msg_data_add (struct ceph_msg*,int *) ;

__attribute__((used)) static void setup_request_data(struct ceph_osd_request *req)
{
 struct ceph_msg *request_msg = req->r_request;
 struct ceph_msg *reply_msg = req->r_reply;
 struct ceph_osd_req_op *op;

 if (req->r_request->num_data_items || req->r_reply->num_data_items)
  return;

 WARN_ON(request_msg->data_length || reply_msg->data_length);
 for (op = req->r_ops; op != &req->r_ops[req->r_num_ops]; op++) {
  switch (op->op) {

  case 129:
  case 128:
   WARN_ON(op->indata_len != op->extent.length);
   ceph_osdc_msg_data_add(request_msg,
            &op->extent.osd_data);
   break;
  case 131:
  case 137:
   WARN_ON(op->indata_len != op->xattr.name_len +
        op->xattr.value_len);
   ceph_osdc_msg_data_add(request_msg,
            &op->xattr.osd_data);
   break;
  case 133:
   ceph_osdc_msg_data_add(request_msg,
            &op->notify_ack.request_data);
   break;
  case 136:
   ceph_osdc_msg_data_add(request_msg,
            &op->copy_from.osd_data);
   break;


  case 130:
   ceph_osdc_msg_data_add(reply_msg,
            &op->raw_data_in);
   break;
  case 132:
   ceph_osdc_msg_data_add(reply_msg,
            &op->extent.osd_data);
   break;
  case 135:
   ceph_osdc_msg_data_add(reply_msg,
            &op->list_watchers.response_data);
   break;


  case 138:
   WARN_ON(op->indata_len != op->cls.class_len +
        op->cls.method_len +
        op->cls.indata_len);
   ceph_osdc_msg_data_add(request_msg,
            &op->cls.request_info);

   ceph_osdc_msg_data_add(request_msg,
            &op->cls.request_data);

   ceph_osdc_msg_data_add(reply_msg,
            &op->cls.response_data);
   break;
  case 134:
   ceph_osdc_msg_data_add(request_msg,
            &op->notify.request_data);
   ceph_osdc_msg_data_add(reply_msg,
            &op->notify.response_data);
   break;
  }
 }
}
