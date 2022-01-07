
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct rpc_task {int dummy; } ;


 int xprt_force_disconnect (struct rpc_xprt*) ;

__attribute__((used)) static void
xprt_rdma_timer(struct rpc_xprt *xprt, struct rpc_task *task)
{
 xprt_force_disconnect(xprt);
}
