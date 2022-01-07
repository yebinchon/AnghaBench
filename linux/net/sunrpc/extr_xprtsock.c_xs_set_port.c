
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;


 int dprintk (char*,struct rpc_xprt*,unsigned short) ;
 int rpc_set_port (int ,unsigned short) ;
 int xs_addr (struct rpc_xprt*) ;
 int xs_update_peer_port (struct rpc_xprt*) ;

__attribute__((used)) static void xs_set_port(struct rpc_xprt *xprt, unsigned short port)
{
 dprintk("RPC:       setting port for xprt %p to %u\n", xprt, port);

 rpc_set_port(xs_addr(xprt), port);
 xs_update_peer_port(xprt);
}
