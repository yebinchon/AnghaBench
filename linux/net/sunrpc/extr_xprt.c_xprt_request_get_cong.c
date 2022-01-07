
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int transport_lock; } ;
struct rpc_rqst {scalar_t__ rq_cong; } ;


 scalar_t__ __xprt_get_cong (struct rpc_xprt*,struct rpc_rqst*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool
xprt_request_get_cong(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
 bool ret = 0;

 if (req->rq_cong)
  return 1;
 spin_lock(&xprt->transport_lock);
 ret = __xprt_get_cong(xprt, req) != 0;
 spin_unlock(&xprt->transport_lock);
 return ret;
}
