
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ resvport; } ;
struct sock_xprt {int srcport; TYPE_1__ xprt; } ;


 int xs_get_random_port () ;

__attribute__((used)) static int xs_get_srcport(struct sock_xprt *transport)
{
 int port = transport->srcport;

 if (port == 0 && transport->xprt.resvport)
  port = xs_get_random_port();
 return port;
}
