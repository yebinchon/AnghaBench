
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dev; int lock; } ;


 int EINVAL ;
 int NETDEV_CHANGEADDR ;
 int br_mtu_auto_adjust (struct net_bridge*) ;
 struct net_bridge_port* br_port_get_rtnl (struct net_device*) ;
 int br_set_gso_limits (struct net_bridge*) ;
 int br_stp_recalculate_bridge_id (struct net_bridge*) ;
 int call_netdevice_notifiers (int ,int ) ;
 int del_nbp (struct net_bridge_port*) ;
 int netdev_update_features (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_del_if(struct net_bridge *br, struct net_device *dev)
{
 struct net_bridge_port *p;
 bool changed_addr;

 p = br_port_get_rtnl(dev);
 if (!p || p->br != br)
  return -EINVAL;





 del_nbp(p);

 br_mtu_auto_adjust(br);
 br_set_gso_limits(br);

 spin_lock_bh(&br->lock);
 changed_addr = br_stp_recalculate_bridge_id(br);
 spin_unlock_bh(&br->lock);

 if (changed_addr)
  call_netdevice_notifiers(NETDEV_CHANGEADDR, br->dev);

 netdev_update_features(br->dev);

 return 0;
}
