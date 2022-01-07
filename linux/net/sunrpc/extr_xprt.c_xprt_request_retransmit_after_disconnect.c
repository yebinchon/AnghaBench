
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {scalar_t__ rq_connect_cookie; struct rpc_xprt* rq_xprt; } ;


 scalar_t__ xprt_connect_cookie (struct rpc_xprt*) ;
 int xprt_connected (struct rpc_xprt*) ;

__attribute__((used)) static bool
xprt_request_retransmit_after_disconnect(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 return req->rq_connect_cookie != xprt_connect_cookie(xprt) ||
  !xprt_connected(xprt);
}
