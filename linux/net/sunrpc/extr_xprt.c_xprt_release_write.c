
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {int transport_lock; TYPE_1__* ops; struct rpc_task* snd_task; } ;
struct rpc_task {int dummy; } ;
struct TYPE_2__ {int (* release_xprt ) (struct rpc_xprt*,struct rpc_task*) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_xprt*,struct rpc_task*) ;

__attribute__((used)) static inline void xprt_release_write(struct rpc_xprt *xprt, struct rpc_task *task)
{
 if (xprt->snd_task != task)
  return;
 spin_lock(&xprt->transport_lock);
 xprt->ops->release_xprt(xprt, task);
 spin_unlock(&xprt->transport_lock);
}
