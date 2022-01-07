
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {TYPE_1__* tk_rqstp; int tk_runstate; } ;
struct TYPE_2__ {int rq_reply_bytes_recvd; } ;


 scalar_t__ READ_ONCE (int ) ;
 int RPC_TASK_NEED_RECV ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool
xprt_request_data_received(struct rpc_task *task)
{
 return !test_bit(RPC_TASK_NEED_RECV, &task->tk_runstate) &&
  READ_ONCE(task->tk_rqstp->rq_reply_bytes_recvd) != 0;
}
