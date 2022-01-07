
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;


 int xprt_free (struct rpc_xprt*) ;
 int xs_free_peer_addresses (struct rpc_xprt*) ;

__attribute__((used)) static void xs_xprt_free(struct rpc_xprt *xprt)
{
 xs_free_peer_addresses(xprt);
 xprt_free(xprt);
}
