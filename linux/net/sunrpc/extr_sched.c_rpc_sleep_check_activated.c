
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_status; } ;


 int EIO ;
 int RPC_IS_ACTIVATED (struct rpc_task*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int rpc_put_task_async (struct rpc_task*) ;

__attribute__((used)) static bool rpc_sleep_check_activated(struct rpc_task *task)
{

 if (WARN_ON_ONCE(!RPC_IS_ACTIVATED(task))) {
  task->tk_status = -EIO;
  rpc_put_task_async(task);
  return 0;
 }
 return 1;
}
