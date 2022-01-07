
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {unsigned short tk_flags; int tk_pid; int tk_calldata; int tk_ops; int tk_op_cred; } ;


 unsigned short RPC_TASK_DYNAMIC ;
 int dprintk (char*,int ) ;
 int mempool_free (struct rpc_task*,int ) ;
 int put_rpccred (int ) ;
 int rpc_release_calldata (int ,int ) ;
 int rpc_task_mempool ;

__attribute__((used)) static void rpc_free_task(struct rpc_task *task)
{
 unsigned short tk_flags = task->tk_flags;

 put_rpccred(task->tk_op_cred);
 rpc_release_calldata(task->tk_ops, task->tk_calldata);

 if (tk_flags & RPC_TASK_DYNAMIC) {
  dprintk("RPC: %5u freeing task\n", task->tk_pid);
  mempool_free(task, rpc_task_mempool);
 }
}
