
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;


 int THIS_MODULE ;
 int dprintk (char*,struct rpc_xprt*) ;
 int module_put (int ) ;
 int xs_xprt_free (struct rpc_xprt*) ;

__attribute__((used)) static void bc_destroy(struct rpc_xprt *xprt)
{
 dprintk("RPC:       bc_destroy xprt %p\n", xprt);

 xs_xprt_free(xprt);
 module_put(THIS_MODULE);
}
