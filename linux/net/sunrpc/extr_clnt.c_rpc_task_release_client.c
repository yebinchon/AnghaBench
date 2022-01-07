
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {struct rpc_clnt* tk_client; int tk_task; } ;
struct rpc_clnt {int cl_lock; } ;


 int list_del (int *) ;
 int rpc_release_client (struct rpc_clnt*) ;
 int rpc_task_release_transport (struct rpc_task*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rpc_task_release_client(struct rpc_task *task)
{
 struct rpc_clnt *clnt = task->tk_client;

 rpc_task_release_transport(task);
 if (clnt != ((void*)0)) {

  spin_lock(&clnt->cl_lock);
  list_del(&task->tk_task);
  spin_unlock(&clnt->cl_lock);
  task->tk_client = ((void*)0);

  rpc_release_client(clnt);
 }
}
