
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_pin; } ;


 int atomic_inc (int *) ;

void xprt_pin_rqst(struct rpc_rqst *req)
{
 atomic_inc(&req->rq_pin);
}
