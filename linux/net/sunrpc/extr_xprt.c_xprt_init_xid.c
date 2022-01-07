
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int xid; } ;


 int prandom_u32 () ;

__attribute__((used)) static void
xprt_init_xid(struct rpc_xprt *xprt)
{
 xprt->xid = prandom_u32();
}
