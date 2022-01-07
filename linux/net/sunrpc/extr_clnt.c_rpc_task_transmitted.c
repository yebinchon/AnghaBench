
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_runstate; } ;


 int RPC_TASK_NEED_XMIT ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool
rpc_task_transmitted(struct rpc_task *task)
{
 return !test_bit(RPC_TASK_NEED_XMIT, &task->tk_runstate);
}
