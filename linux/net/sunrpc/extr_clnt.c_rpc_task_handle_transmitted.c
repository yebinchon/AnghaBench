
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_action; } ;


 int call_transmit_status ;
 int xprt_end_transmit (struct rpc_task*) ;

__attribute__((used)) static void
rpc_task_handle_transmitted(struct rpc_task *task)
{
 xprt_end_transmit(task);
 task->tk_action = call_transmit_status;
}
