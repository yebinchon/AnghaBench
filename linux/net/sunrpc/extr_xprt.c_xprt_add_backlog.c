
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int backlog; int state; } ;
struct rpc_task {int dummy; } ;


 int XPRT_CONGESTED ;
 int rpc_sleep_on (int *,struct rpc_task*,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void xprt_add_backlog(struct rpc_xprt *xprt, struct rpc_task *task)
{
 set_bit(XPRT_CONGESTED, &xprt->state);
 rpc_sleep_on(&xprt->backlog, task, ((void*)0));
}
