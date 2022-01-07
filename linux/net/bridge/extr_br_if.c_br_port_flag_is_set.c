
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge_port {unsigned long flags; } ;


 struct net_bridge_port* br_port_get_rtnl_rcu (struct net_device const*) ;

bool br_port_flag_is_set(const struct net_device *dev, unsigned long flag)
{
 struct net_bridge_port *p;

 p = br_port_get_rtnl_rcu(dev);
 if (!p)
  return 0;

 return p->flags & flag;
}
