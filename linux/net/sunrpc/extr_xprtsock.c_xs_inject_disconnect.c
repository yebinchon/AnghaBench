
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;


 int dprintk (char*,struct rpc_xprt*) ;
 int xprt_disconnect_done (struct rpc_xprt*) ;

__attribute__((used)) static void xs_inject_disconnect(struct rpc_xprt *xprt)
{
 dprintk("RPC:       injecting transport disconnect on xprt=%p\n",
  xprt);
 xprt_disconnect_done(xprt);
}
