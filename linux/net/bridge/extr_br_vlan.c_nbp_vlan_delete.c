
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_bridge_vlan {int dummy; } ;
struct net_bridge_port {int br; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ASSERT_RTNL () ;
 int ENOENT ;
 int __vlan_del (struct net_bridge_vlan*) ;
 int br_fdb_delete_by_port (int ,struct net_bridge_port*,int ,int ) ;
 int br_fdb_find_delete_local (int ,struct net_bridge_port*,int ,int ) ;
 struct net_bridge_vlan* br_vlan_find (int ,int ) ;
 int nbp_vlan_group (struct net_bridge_port*) ;

int nbp_vlan_delete(struct net_bridge_port *port, u16 vid)
{
 struct net_bridge_vlan *v;

 ASSERT_RTNL();

 v = br_vlan_find(nbp_vlan_group(port), vid);
 if (!v)
  return -ENOENT;
 br_fdb_find_delete_local(port->br, port, port->dev->dev_addr, vid);
 br_fdb_delete_by_port(port->br, port, vid, 0);

 return __vlan_del(v);
}
