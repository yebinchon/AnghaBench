
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct rpc_task {int tk_status; int * tk_rqstp; struct rpc_xprt* tk_xprt; } ;


 int EAGAIN ;
 int xprt_do_reserve (struct rpc_xprt*,struct rpc_task*) ;

void xprt_retry_reserve(struct rpc_task *task)
{
 struct rpc_xprt *xprt = task->tk_xprt;

 task->tk_status = 0;
 if (task->tk_rqstp != ((void*)0))
  return;

 task->tk_status = -EAGAIN;
 xprt_do_reserve(xprt, task);
}
