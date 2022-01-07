
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int reestablish_timeout; int max_reconnect_timeout; } ;



void xprt_reconnect_backoff(struct rpc_xprt *xprt, unsigned long init_to)
{
 xprt->reestablish_timeout <<= 1;
 if (xprt->reestablish_timeout > xprt->max_reconnect_timeout)
  xprt->reestablish_timeout = xprt->max_reconnect_timeout;
 if (xprt->reestablish_timeout < init_to)
  xprt->reestablish_timeout = init_to;
}
