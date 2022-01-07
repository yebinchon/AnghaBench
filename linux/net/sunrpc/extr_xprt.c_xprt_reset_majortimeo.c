
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_majortimeo; } ;


 scalar_t__ xprt_calc_majortimeo (struct rpc_rqst*) ;

__attribute__((used)) static void xprt_reset_majortimeo(struct rpc_rqst *req)
{
 req->rq_majortimeo += xprt_calc_majortimeo(req);
}
