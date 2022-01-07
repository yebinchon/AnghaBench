
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int INT_H_SIZE ;
 int tipc_bc_sndlink (struct net*) ;
 int tipc_link_mtu (int ) ;

int tipc_bcast_get_mtu(struct net *net)
{
 return tipc_link_mtu(tipc_bc_sndlink(net)) - INT_H_SIZE;
}
