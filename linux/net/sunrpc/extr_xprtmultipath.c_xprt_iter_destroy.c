
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_iter {int dummy; } ;


 int xprt_iter_xchg_switch (struct rpc_xprt_iter*,int *) ;
 int xprt_switch_put (int ) ;

void xprt_iter_destroy(struct rpc_xprt_iter *xpi)
{
 xprt_switch_put(xprt_iter_xchg_switch(xpi, ((void*)0)));
}
