
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {scalar_t__ tk_status; int tk_xprt; int tk_runstate; int tk_action; } ;


 scalar_t__ ENOTCONN ;
 int RPC_TASK_NEED_XMIT ;
 int call_transmit_status ;
 int dprint_status (struct rpc_task*) ;
 int rpc_task_handle_transmitted (struct rpc_task*) ;
 scalar_t__ rpc_task_transmitted (struct rpc_task*) ;
 scalar_t__ test_bit (int ,int *) ;
 int xprt_connected (int ) ;
 int xprt_end_transmit (struct rpc_task*) ;
 int xprt_prepare_transmit (struct rpc_task*) ;
 int xprt_transmit (struct rpc_task*) ;

__attribute__((used)) static void
call_transmit(struct rpc_task *task)
{
 if (rpc_task_transmitted(task)) {
  rpc_task_handle_transmitted(task);
  return;
 }

 dprint_status(task);

 task->tk_action = call_transmit_status;
 if (!xprt_prepare_transmit(task))
  return;
 task->tk_status = 0;
 if (test_bit(RPC_TASK_NEED_XMIT, &task->tk_runstate)) {
  if (!xprt_connected(task->tk_xprt)) {
   task->tk_status = -ENOTCONN;
   return;
  }
  xprt_transmit(task);
 }
 xprt_end_transmit(task);
}
