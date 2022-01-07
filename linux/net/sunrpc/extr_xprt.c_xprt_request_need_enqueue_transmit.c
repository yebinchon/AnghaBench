
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_runstate; } ;
struct rpc_rqst {int dummy; } ;


 int RPC_TASK_NEED_XMIT ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool
xprt_request_need_enqueue_transmit(struct rpc_task *task, struct rpc_rqst *req)
{
 return !test_bit(RPC_TASK_NEED_XMIT, &task->tk_runstate);
}
