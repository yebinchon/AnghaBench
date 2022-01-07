
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct rpc_rqst {scalar_t__ rq_connect_cookie; } ;


 scalar_t__ xprt_connect_cookie (struct rpc_xprt*) ;

__attribute__((used)) static void
xprt_init_connect_cookie(struct rpc_rqst *req, struct rpc_xprt *xprt)
{
 req->rq_connect_cookie = xprt_connect_cookie(xprt) - 1;
}
