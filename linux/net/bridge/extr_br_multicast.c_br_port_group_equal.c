
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port_group {int eth_addr; struct net_bridge_port* port; } ;
struct net_bridge_port {int flags; } ;


 int BR_MULTICAST_TO_UNICAST ;
 int ether_addr_equal (unsigned char const*,int ) ;

__attribute__((used)) static bool br_port_group_equal(struct net_bridge_port_group *p,
    struct net_bridge_port *port,
    const unsigned char *src)
{
 if (p->port != port)
  return 0;

 if (!(port->flags & BR_MULTICAST_TO_UNICAST))
  return 1;

 return ether_addr_equal(src, p->eth_addr);
}
