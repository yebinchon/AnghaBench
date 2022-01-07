
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_notifier_pre_changeaddr_info {int dev_addr; } ;
struct net_device {int priv_flags; int dev_addr; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {TYPE_1__* dev; int lock; } ;
struct TYPE_5__ {int flags; int addr_assign_type; } ;


 int IFF_EBRIDGE ;
 int IFF_UP ;
 unsigned long NETDEV_REGISTER ;



 int NET_ADDR_SET ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int RTM_NEWLINK ;
 int br_del_if (struct net_bridge*,struct net_device*) ;
 int br_fdb_changeaddr (struct net_bridge_port*,int ) ;
 int br_ifinfo_notify (int ,int *,struct net_bridge_port*) ;
 int br_mtu_auto_adjust (struct net_bridge*) ;
 int br_port_carrier_check (struct net_bridge_port*,int*) ;
 struct net_bridge_port* br_port_get_rtnl (struct net_device*) ;
 int br_stp_disable_port (struct net_bridge_port*) ;
 int br_stp_enable_port (struct net_bridge_port*) ;
 int br_stp_recalculate_bridge_id (struct net_bridge*) ;
 int br_sysfs_addbr (struct net_device*) ;
 int br_sysfs_renameif (struct net_bridge_port*) ;
 int br_vlan_bridge_event (struct net_device*,unsigned long,void*) ;
 int br_vlan_port_event (struct net_bridge_port*,unsigned long) ;
 int call_netdevice_notifiers (int const,TYPE_1__*) ;
 int dev_pre_changeaddr_notify (TYPE_1__*,int ,struct netlink_ext_ack*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct netlink_ext_ack* netdev_notifier_info_to_extack (void*) ;
 int netdev_update_features (TYPE_1__*) ;
 int netif_oper_up (struct net_device*) ;
 int netif_running (TYPE_1__*) ;
 int notifier_from_errno (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int br_device_event(struct notifier_block *unused, unsigned long event, void *ptr)
{
 struct netlink_ext_ack *extack = netdev_notifier_info_to_extack(ptr);
 struct netdev_notifier_pre_changeaddr_info *prechaddr_info;
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct net_bridge_port *p;
 struct net_bridge *br;
 bool notified = 0;
 bool changed_addr;
 int err;

 if (dev->priv_flags & IFF_EBRIDGE) {
  err = br_vlan_bridge_event(dev, event, ptr);
  if (err)
   return notifier_from_errno(err);

  if (event == NETDEV_REGISTER) {

   br_sysfs_addbr(dev);
   return NOTIFY_DONE;
  }
 }


 p = br_port_get_rtnl(dev);
 if (!p)
  return NOTIFY_DONE;

 br = p->br;

 switch (event) {
 case 136:
  br_mtu_auto_adjust(br);
  break;

 case 132:
  if (br->dev->addr_assign_type == NET_ADDR_SET)
   break;
  prechaddr_info = ptr;
  err = dev_pre_changeaddr_notify(br->dev,
      prechaddr_info->dev_addr,
      extack);
  if (err)
   return notifier_from_errno(err);
  break;

 case 137:
  spin_lock_bh(&br->lock);
  br_fdb_changeaddr(p, dev->dev_addr);
  changed_addr = br_stp_recalculate_bridge_id(br);
  spin_unlock_bh(&br->lock);

  if (changed_addr)
   call_netdevice_notifiers(137, br->dev);

  break;

 case 138:
  br_port_carrier_check(p, &notified);
  break;

 case 133:
  netdev_update_features(br->dev);
  break;

 case 134:
  spin_lock_bh(&br->lock);
  if (br->dev->flags & IFF_UP) {
   br_stp_disable_port(p);
   notified = 1;
  }
  spin_unlock_bh(&br->lock);
  break;

 case 128:
  if (netif_running(br->dev) && netif_oper_up(dev)) {
   spin_lock_bh(&br->lock);
   br_stp_enable_port(p);
   notified = 1;
   spin_unlock_bh(&br->lock);
  }
  break;

 case 129:
  br_del_if(br, dev);
  break;

 case 135:
  err = br_sysfs_renameif(p);
  if (err)
   return notifier_from_errno(err);
  break;

 case 131:

  return NOTIFY_BAD;

 case 130:

  call_netdevice_notifiers(event, br->dev);
  break;
 }

 if (event != 129)
  br_vlan_port_event(p, event);


 if (!notified && (event == 137 || event == 128 ||
     event == 138 || event == 134))
  br_ifinfo_notify(RTM_NEWLINK, ((void*)0), p);

 return NOTIFY_DONE;
}
