
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task_setup {int rpc_op_cred; int rpc_xprt; int rpc_client; int workqueue; scalar_t__ priority; int callback_data; TYPE_1__* callback_ops; int flags; } ;
struct rpc_task {int tk_action; TYPE_1__* tk_ops; int tk_op_cred; int tk_xprt; int tk_workqueue; int tk_owner; scalar_t__ tk_priority; int tk_task; int tk_calldata; int tk_flags; int tk_count; } ;
struct TYPE_5__ {int tgid; } ;
struct TYPE_4__ {int * rpc_call_prepare; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ RPC_PRIORITY_LOW ;
 int atomic_set (int *,int) ;
 TYPE_2__* current ;
 int dprintk (char*,int ) ;
 int get_rpccred (int ) ;
 int memset (struct rpc_task*,int ,int) ;
 int rpc_init_task_statistics (struct rpc_task*) ;
 int rpc_prepare_task ;
 int rpc_task_get_xprt (int ,int ) ;
 int task_pid_nr (TYPE_2__*) ;
 int xprt_get (int ) ;

__attribute__((used)) static void rpc_init_task(struct rpc_task *task, const struct rpc_task_setup *task_setup_data)
{
 memset(task, 0, sizeof(*task));
 atomic_set(&task->tk_count, 1);
 task->tk_flags = task_setup_data->flags;
 task->tk_ops = task_setup_data->callback_ops;
 task->tk_calldata = task_setup_data->callback_data;
 INIT_LIST_HEAD(&task->tk_task);

 task->tk_priority = task_setup_data->priority - RPC_PRIORITY_LOW;
 task->tk_owner = current->tgid;


 task->tk_workqueue = task_setup_data->workqueue;

 task->tk_xprt = rpc_task_get_xprt(task_setup_data->rpc_client,
   xprt_get(task_setup_data->rpc_xprt));

 task->tk_op_cred = get_rpccred(task_setup_data->rpc_op_cred);

 if (task->tk_ops->rpc_call_prepare != ((void*)0))
  task->tk_action = rpc_prepare_task;

 rpc_init_task_statistics(task);

 dprintk("RPC:       new task initialized, procpid %u\n",
    task_pid_nr(current));
}
