
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_xprt; } ;


 int xprt_connected (int ) ;

__attribute__((used)) static bool
rpc_check_connected(const struct rpc_rqst *req)
{

 if (!req || !req->rq_xprt)
  return 1;
 return xprt_connected(req->rq_xprt);
}
