
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int recv_queue; } ;
struct rpc_rqst {int rq_recv; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static void
xprt_request_rb_remove(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
 rb_erase(&req->rq_recv, &xprt->recv_queue);
}
