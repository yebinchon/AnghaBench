
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {int transport_lock; TYPE_1__* ops; struct rpc_task* snd_task; int state; } ;
struct rpc_task {int dummy; } ;
struct TYPE_2__ {int (* reserve_xprt ) (struct rpc_xprt*,struct rpc_task*) ;} ;


 int XPRT_LOCKED ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_xprt*,struct rpc_task*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int xprt_lock_write(struct rpc_xprt *xprt, struct rpc_task *task)
{
 int retval;

 if (test_bit(XPRT_LOCKED, &xprt->state) && xprt->snd_task == task)
  return 1;
 spin_lock(&xprt->transport_lock);
 retval = xprt->ops->reserve_xprt(xprt, task);
 spin_unlock(&xprt->transport_lock);
 return retval;
}
