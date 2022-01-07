
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* bc_setup ) (struct rpc_xprt*,unsigned int) ;} ;


 int stub1 (struct rpc_xprt*,unsigned int) ;

int xprt_setup_backchannel(struct rpc_xprt *xprt, unsigned int min_reqs)
{
 if (!xprt->ops->bc_setup)
  return 0;
 return xprt->ops->bc_setup(xprt, min_reqs);
}
