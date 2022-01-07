
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rpcrdma_ia {TYPE_1__* ri_id; TYPE_1__* ri_pd; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {TYPE_3__* device; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;

 int frwr_is_supported (TYPE_3__*) ;
 TYPE_1__* ib_alloc_pd (TYPE_3__*,int ) ;
 int pr_err (char*,int,...) ;
 TYPE_1__* rpcrdma_create_id (struct rpcrdma_xprt*,struct rpcrdma_ia*) ;
 int rpcrdma_ia_close (struct rpcrdma_ia*) ;
 int xprt_rdma_memreg_strategy ;

int
rpcrdma_ia_open(struct rpcrdma_xprt *xprt)
{
 struct rpcrdma_ia *ia = &xprt->rx_ia;
 int rc;

 ia->ri_id = rpcrdma_create_id(xprt, ia);
 if (IS_ERR(ia->ri_id)) {
  rc = PTR_ERR(ia->ri_id);
  goto out_err;
 }

 ia->ri_pd = ib_alloc_pd(ia->ri_id->device, 0);
 if (IS_ERR(ia->ri_pd)) {
  rc = PTR_ERR(ia->ri_pd);
  pr_err("rpcrdma: ib_alloc_pd() returned %d\n", rc);
  goto out_err;
 }

 switch (xprt_rdma_memreg_strategy) {
 case 128:
  if (frwr_is_supported(ia->ri_id->device))
   break;

 default:
  pr_err("rpcrdma: Device %s does not support memreg mode %d\n",
         ia->ri_id->device->name, xprt_rdma_memreg_strategy);
  rc = -EINVAL;
  goto out_err;
 }

 return 0;

out_err:
 rpcrdma_ia_close(ia);
 return rc;
}
