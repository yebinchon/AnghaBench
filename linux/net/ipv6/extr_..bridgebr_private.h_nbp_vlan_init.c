
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_bridge_port {int dummy; } ;



__attribute__((used)) static inline int nbp_vlan_init(struct net_bridge_port *port,
    struct netlink_ext_ack *extack)
{
 return 0;
}
