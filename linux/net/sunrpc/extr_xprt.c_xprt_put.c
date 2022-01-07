
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int kref; } ;


 int kref_put (int *,int ) ;
 int xprt_destroy_kref ;

void xprt_put(struct rpc_xprt *xprt)
{
 if (xprt != ((void*)0))
  kref_put(&xprt->kref, xprt_destroy_kref);
}
