
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rm_rdma_op {TYPE_1__* op_notifier; scalar_t__ op_notify; scalar_t__ op_active; } ;
struct rm_atomic_op {TYPE_2__* op_notifier; scalar_t__ op_notify; scalar_t__ op_active; } ;
struct rds_sock {int rs_notify_queue; } ;
struct rds_message {struct rm_atomic_op atomic; struct rm_rdma_op rdma; } ;
struct TYPE_4__ {int n_status; int n_list; } ;
struct TYPE_3__ {int n_status; int n_list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void
__rds_send_complete(struct rds_sock *rs, struct rds_message *rm, int status)
{
 struct rm_rdma_op *ro;
 struct rm_atomic_op *ao;

 ro = &rm->rdma;
 if (ro->op_active && ro->op_notify && ro->op_notifier) {
  ro->op_notifier->n_status = status;
  list_add_tail(&ro->op_notifier->n_list, &rs->rs_notify_queue);
  ro->op_notifier = ((void*)0);
 }

 ao = &rm->atomic;
 if (ao->op_active && ao->op_notify && ao->op_notifier) {
  ao->op_notifier->n_status = status;
  list_add_tail(&ao->op_notifier->n_list, &rs->rs_notify_queue);
  ao->op_notifier = ((void*)0);
 }


}
