
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_pin; } ;


 int wait_var_event (int *,int) ;
 int xprt_is_pinned_rqst (struct rpc_rqst*) ;

__attribute__((used)) static void xprt_wait_on_pinned_rqst(struct rpc_rqst *req)
{
 wait_var_event(&req->rq_pin, !xprt_is_pinned_rqst(req));
}
