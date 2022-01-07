
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int xps_kref; } ;


 int kref_put (int *,int ) ;
 int xprt_switch_free ;

void xprt_switch_put(struct rpc_xprt_switch *xps)
{
 if (xps != ((void*)0))
  kref_put(&xps->xps_kref, xprt_switch_free);
}
