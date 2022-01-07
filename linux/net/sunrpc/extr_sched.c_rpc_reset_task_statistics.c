
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_flags; scalar_t__ tk_timeouts; } ;


 int RPC_CALL_MAJORSEEN ;
 int RPC_TASK_SENT ;
 int rpc_init_task_statistics (struct rpc_task*) ;

__attribute__((used)) static void
rpc_reset_task_statistics(struct rpc_task *task)
{
 task->tk_timeouts = 0;
 task->tk_flags &= ~(RPC_CALL_MAJORSEEN|RPC_TASK_SENT);
 rpc_init_task_statistics(task);
}
