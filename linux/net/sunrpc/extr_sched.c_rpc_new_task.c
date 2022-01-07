
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task_setup {struct rpc_task* task; } ;
struct rpc_task {unsigned short tk_flags; } ;


 unsigned short RPC_TASK_DYNAMIC ;
 int dprintk (char*,struct rpc_task*) ;
 struct rpc_task* rpc_alloc_task () ;
 int rpc_init_task (struct rpc_task*,struct rpc_task_setup const*) ;

struct rpc_task *rpc_new_task(const struct rpc_task_setup *setup_data)
{
 struct rpc_task *task = setup_data->task;
 unsigned short flags = 0;

 if (task == ((void*)0)) {
  task = rpc_alloc_task();
  flags = RPC_TASK_DYNAMIC;
 }

 rpc_init_task(task, setup_data);
 task->tk_flags |= flags;
 dprintk("RPC:       allocated task %p\n", task);
 return task;
}
