
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int sending; struct rpc_task* snd_task; int state; } ;
struct rpc_task {int tk_status; int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int dummy; } ;


 int EAGAIN ;
 scalar_t__ RPC_IS_SOFT (struct rpc_task*) ;
 int XPRT_LOCKED ;
 int XPRT_WRITE_SPACE ;
 int dprintk (char*,int ,struct rpc_xprt*) ;
 int rpc_sleep_on (int *,struct rpc_task*,int *) ;
 int rpc_sleep_on_timeout (int *,struct rpc_task*,int *,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int xprt_clear_locked (struct rpc_xprt*) ;
 int xprt_request_timeout (struct rpc_rqst*) ;

int xprt_reserve_xprt(struct rpc_xprt *xprt, struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;

 if (test_and_set_bit(XPRT_LOCKED, &xprt->state)) {
  if (task == xprt->snd_task)
   return 1;
  goto out_sleep;
 }
 if (test_bit(XPRT_WRITE_SPACE, &xprt->state))
  goto out_unlock;
 xprt->snd_task = task;

 return 1;

out_unlock:
 xprt_clear_locked(xprt);
out_sleep:
 dprintk("RPC: %5u failed to lock transport %p\n",
   task->tk_pid, xprt);
 task->tk_status = -EAGAIN;
 if (RPC_IS_SOFT(task))
  rpc_sleep_on_timeout(&xprt->sending, task, ((void*)0),
    xprt_request_timeout(req));
 else
  rpc_sleep_on(&xprt->sending, task, ((void*)0));
 return 0;
}
