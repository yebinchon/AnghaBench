
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int state; int backlog; } ;


 int XPRT_CONGESTED ;
 int clear_bit (int ,int *) ;
 int * rpc_wake_up_next (int *) ;

__attribute__((used)) static void xprt_wake_up_backlog(struct rpc_xprt *xprt)
{
 if (rpc_wake_up_next(&xprt->backlog) == ((void*)0))
  clear_bit(XPRT_CONGESTED, &xprt->state);
}
