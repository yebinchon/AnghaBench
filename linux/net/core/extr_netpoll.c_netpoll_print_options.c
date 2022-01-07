
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ip; int in6; } ;
struct TYPE_3__ {int ip; int in6; } ;
struct netpoll {int * remote_mac; TYPE_2__ remote_ip; scalar_t__ ipv6; int * remote_port; int * dev_name; TYPE_1__ local_ip; int * local_port; } ;


 int np_info (struct netpoll*,char*,int *) ;

void netpoll_print_options(struct netpoll *np)
{
 np_info(np, "local port %d\n", np->local_port);
 if (np->ipv6)
  np_info(np, "local IPv6 address %pI6c\n", &np->local_ip.in6);
 else
  np_info(np, "local IPv4 address %pI4\n", &np->local_ip.ip);
 np_info(np, "interface '%s'\n", np->dev_name);
 np_info(np, "remote port %d\n", np->remote_port);
 if (np->ipv6)
  np_info(np, "remote IPv6 address %pI6c\n", &np->remote_ip.in6);
 else
  np_info(np, "remote IPv4 address %pI4\n", &np->remote_ip.ip);
 np_info(np, "remote ethernet address %pM\n", np->remote_mac);
}
