
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;
struct TYPE_2__ {int (* bc_free_rqst ) (struct rpc_rqst*) ;} ;


 int stub1 (struct rpc_rqst*) ;

void xprt_free_bc_request(struct rpc_rqst *req)
{
 struct rpc_xprt *xprt = req->rq_xprt;

 xprt->ops->bc_free_rqst(req);
}
