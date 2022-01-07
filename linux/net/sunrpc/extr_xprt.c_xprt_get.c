
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int kref; } ;


 scalar_t__ kref_get_unless_zero (int *) ;

struct rpc_xprt *xprt_get(struct rpc_xprt *xprt)
{
 if (xprt != ((void*)0) && kref_get_unless_zero(&xprt->kref))
  return xprt;
 return ((void*)0);
}
