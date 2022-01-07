
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_xprt; } ;


 int __xprt_put_cong (int ,struct rpc_rqst*) ;

void xprt_release_rqst_cong(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;

 __xprt_put_cong(req->rq_xprt, req);
}
