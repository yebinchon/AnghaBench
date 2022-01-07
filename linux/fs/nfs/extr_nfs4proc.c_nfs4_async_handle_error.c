
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_status; } ;
struct nfs_server {int dummy; } ;
struct nfs4_state {int dummy; } ;
struct nfs4_exception {long timeout; scalar_t__ retry; scalar_t__ delay; struct nfs4_state* state; } ;


 int EAGAIN ;
 int nfs4_async_handle_exception (struct rpc_task*,struct nfs_server*,int ,struct nfs4_exception*) ;

int
nfs4_async_handle_error(struct rpc_task *task, struct nfs_server *server,
   struct nfs4_state *state, long *timeout)
{
 struct nfs4_exception exception = {
  .state = state,
 };

 if (task->tk_status >= 0)
  return 0;
 if (timeout)
  exception.timeout = *timeout;
 task->tk_status = nfs4_async_handle_exception(task, server,
   task->tk_status,
   &exception);
 if (exception.delay && timeout)
  *timeout = exception.timeout;
 if (exception.retry)
  return -EAGAIN;
 return 0;
}
