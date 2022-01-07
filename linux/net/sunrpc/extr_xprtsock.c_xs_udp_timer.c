
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int transport_lock; } ;
struct rpc_task {int dummy; } ;


 int ETIMEDOUT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_adjust_cwnd (struct rpc_xprt*,struct rpc_task*,int ) ;

__attribute__((used)) static void xs_udp_timer(struct rpc_xprt *xprt, struct rpc_task *task)
{
 spin_lock(&xprt->transport_lock);
 xprt_adjust_cwnd(xprt, task, -ETIMEDOUT);
 spin_unlock(&xprt->transport_lock);
}
