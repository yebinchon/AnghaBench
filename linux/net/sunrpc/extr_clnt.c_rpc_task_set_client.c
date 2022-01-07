
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_task; int tk_flags; struct rpc_clnt* tk_client; } ;
struct rpc_clnt {int cl_lock; int cl_tasks; int cl_swapper; scalar_t__ cl_noretranstimeo; scalar_t__ cl_softerr; scalar_t__ cl_softrtry; int cl_count; } ;


 int RPC_TASK_NO_RETRANS_TIMEOUT ;
 int RPC_TASK_SOFT ;
 int RPC_TASK_SWAPPER ;
 int RPC_TASK_TIMEOUT ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int list_add_tail (int *,int *) ;
 int rpc_task_set_transport (struct rpc_task*,struct rpc_clnt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static
void rpc_task_set_client(struct rpc_task *task, struct rpc_clnt *clnt)
{

 if (clnt != ((void*)0)) {
  rpc_task_set_transport(task, clnt);
  task->tk_client = clnt;
  atomic_inc(&clnt->cl_count);
  if (clnt->cl_softrtry)
   task->tk_flags |= RPC_TASK_SOFT;
  if (clnt->cl_softerr)
   task->tk_flags |= RPC_TASK_TIMEOUT;
  if (clnt->cl_noretranstimeo)
   task->tk_flags |= RPC_TASK_NO_RETRANS_TIMEOUT;
  if (atomic_read(&clnt->cl_swapper))
   task->tk_flags |= RPC_TASK_SWAPPER;

  spin_lock(&clnt->cl_lock);
  list_add_tail(&task->tk_task, &clnt->cl_tasks);
  spin_unlock(&clnt->cl_lock);
 }
}
