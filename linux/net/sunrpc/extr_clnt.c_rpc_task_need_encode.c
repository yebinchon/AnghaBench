
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_flags; int tk_runstate; } ;


 int RPC_TASK_NEED_XMIT ;
 int RPC_TASK_NO_RETRANS_TIMEOUT ;
 int RPC_TASK_SENT ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ xprt_request_need_retransmit (struct rpc_task*) ;

__attribute__((used)) static int
rpc_task_need_encode(struct rpc_task *task)
{
 return test_bit(RPC_TASK_NEED_XMIT, &task->tk_runstate) == 0 &&
  (!(task->tk_flags & RPC_TASK_SENT) ||
   !(task->tk_flags & RPC_TASK_NO_RETRANS_TIMEOUT) ||
   xprt_request_need_retransmit(task));
}
