
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {size_t r_num_ops; struct ceph_osd_req_op* r_ops; } ;
struct ceph_osd_req_op {int op; } ;
 int WARN_ON (int) ;
 int osd_req_opcode_valid (int) ;

__attribute__((used)) static void get_num_data_items(struct ceph_osd_request *req,
          int *num_request_data_items,
          int *num_reply_data_items)
{
 struct ceph_osd_req_op *op;

 *num_request_data_items = 0;
 *num_reply_data_items = 0;

 for (op = req->r_ops; op != &req->r_ops[req->r_num_ops]; op++) {
  switch (op->op) {

  case 129:
  case 128:
  case 131:
  case 137:
  case 133:
  case 136:
   *num_request_data_items += 1;
   break;


  case 130:
  case 132:
  case 135:
   *num_reply_data_items += 1;
   break;


  case 134:
   *num_request_data_items += 1;
   *num_reply_data_items += 1;
   break;
  case 138:
   *num_request_data_items += 2;
   *num_reply_data_items += 1;
   break;

  default:
   WARN_ON(!osd_req_opcode_valid(op->op));
   break;
  }
 }
}
