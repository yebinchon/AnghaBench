
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resvport; } ;
struct sock_xprt {scalar_t__ srcport; TYPE_1__ xprt; } ;


 unsigned short xprt_max_resvport ;
 unsigned short xprt_min_resvport ;

__attribute__((used)) static unsigned short xs_next_srcport(struct sock_xprt *transport, unsigned short port)
{
 if (transport->srcport != 0)
  transport->srcport = 0;
 if (!transport->xprt.resvport)
  return 0;
 if (port <= xprt_min_resvport || port > xprt_max_resvport)
  return xprt_max_resvport;
 return --port;
}
