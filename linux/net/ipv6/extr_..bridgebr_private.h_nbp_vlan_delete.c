
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_port {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int nbp_vlan_delete(struct net_bridge_port *port, u16 vid)
{
 return -EOPNOTSUPP;
}
