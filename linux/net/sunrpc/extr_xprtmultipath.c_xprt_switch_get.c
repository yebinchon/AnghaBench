
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int xps_kref; } ;


 scalar_t__ kref_get_unless_zero (int *) ;

struct rpc_xprt_switch *xprt_switch_get(struct rpc_xprt_switch *xps)
{
 if (xps != ((void*)0) && kref_get_unless_zero(&xps->xps_kref))
  return xps;
 return ((void*)0);
}
