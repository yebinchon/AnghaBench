
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task_setup {int rpc_message; int rpc_client; } ;
struct rpc_task {int tk_count; int * tk_action; } ;


 int atomic_inc (int *) ;
 int rpc_call_start (struct rpc_task*) ;
 int rpc_execute (struct rpc_task*) ;
 struct rpc_task* rpc_new_task (struct rpc_task_setup const*) ;
 int rpc_task_set_client (struct rpc_task*,int ) ;
 int rpc_task_set_rpc_message (struct rpc_task*,int ) ;

struct rpc_task *rpc_run_task(const struct rpc_task_setup *task_setup_data)
{
 struct rpc_task *task;

 task = rpc_new_task(task_setup_data);

 rpc_task_set_client(task, task_setup_data->rpc_client);
 rpc_task_set_rpc_message(task, task_setup_data->rpc_message);

 if (task->tk_action == ((void*)0))
  rpc_call_start(task);

 atomic_inc(&task->tk_count);
 rpc_execute(task);
 return task;
}
