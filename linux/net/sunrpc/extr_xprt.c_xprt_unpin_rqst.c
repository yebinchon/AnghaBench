
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_rqst {int rq_pin; TYPE_1__* rq_task; } ;
struct TYPE_2__ {int tk_runstate; } ;


 int RPC_TASK_MSG_PIN_WAIT ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int test_bit (int ,int *) ;
 int wake_up_var (int *) ;

void xprt_unpin_rqst(struct rpc_rqst *req)
{
 if (!test_bit(RPC_TASK_MSG_PIN_WAIT, &req->rq_task->tk_runstate)) {
  atomic_dec(&req->rq_pin);
  return;
 }
 if (atomic_dec_and_test(&req->rq_pin))
  wake_up_var(&req->rq_pin);
}
