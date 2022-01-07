
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sock_xprt {scalar_t__ srcport; } ;


 scalar_t__ xs_sock_getport (struct socket*) ;

__attribute__((used)) static void xs_set_srcport(struct sock_xprt *transport, struct socket *sock)
{
 if (transport->srcport == 0)
  transport->srcport = xs_sock_getport(sock);
}
