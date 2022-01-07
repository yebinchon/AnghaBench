
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; } ;
struct rpc_task {int * tk_rqstp; } ;
struct TYPE_2__ {int (* alloc_slot ) (struct rpc_xprt*,struct rpc_task*) ;} ;


 int stub1 (struct rpc_xprt*,struct rpc_task*) ;
 int xprt_request_init (struct rpc_task*) ;

__attribute__((used)) static void
xprt_do_reserve(struct rpc_xprt *xprt, struct rpc_task *task)
{
 xprt->ops->alloc_slot(xprt, task);
 if (task->tk_rqstp != ((void*)0))
  xprt_request_init(task);
}
