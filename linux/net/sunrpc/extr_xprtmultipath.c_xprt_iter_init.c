
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt_iter {int dummy; } ;


 int __xprt_iter_init (struct rpc_xprt_iter*,struct rpc_xprt_switch*,int *) ;

void xprt_iter_init(struct rpc_xprt_iter *xpi,
  struct rpc_xprt_switch *xps)
{
 __xprt_iter_init(xpi, xps, ((void*)0));
}
