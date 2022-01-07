
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* bc_destroy ) (struct rpc_xprt*,unsigned int) ;} ;


 int stub1 (struct rpc_xprt*,unsigned int) ;

void xprt_destroy_backchannel(struct rpc_xprt *xprt, unsigned int max_reqs)
{
 if (xprt->ops->bc_destroy)
  xprt->ops->bc_destroy(xprt, max_reqs);
}
