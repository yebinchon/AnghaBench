
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int priv_flags; int name; } ;
struct net_bridge_port {int rcu; int kobj; int list; struct net_device* dev; struct net_bridge* br; } ;
struct net_bridge {TYPE_1__* dev; int lock; int ifobj; } ;
struct TYPE_2__ {scalar_t__ needed_headroom; } ;


 int IFF_BRIDGE_PORT ;
 int KOBJ_REMOVE ;
 int RTM_DELLINK ;
 int br_fdb_delete_by_port (struct net_bridge*,struct net_bridge_port*,int ,int) ;
 int br_ifinfo_notify (int ,int *,struct net_bridge_port*) ;
 int br_multicast_del_port (struct net_bridge_port*) ;
 int br_netpoll_disable (struct net_bridge_port*) ;
 int br_stp_disable_port (struct net_bridge_port*) ;
 int call_rcu (int *,int ) ;
 int destroy_nbp_rcu ;
 int get_max_headroom (struct net_bridge*) ;
 int kobject_del (int *) ;
 int kobject_uevent (int *,int ) ;
 int list_del_rcu (int *) ;
 int nbp_backup_clear (struct net_bridge_port*) ;
 int nbp_delete_promisc (struct net_bridge_port*) ;
 int nbp_update_port_count (struct net_bridge*) ;
 int nbp_vlan_flush (struct net_bridge_port*) ;
 scalar_t__ netdev_get_fwd_headroom (struct net_device*) ;
 int netdev_reset_rx_headroom (struct net_device*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;
 int netdev_upper_dev_unlink (struct net_device*,TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int switchdev_deferred_process () ;
 int sysfs_remove_link (int ,int ) ;
 int update_headroom (struct net_bridge*,int ) ;

__attribute__((used)) static void del_nbp(struct net_bridge_port *p)
{
 struct net_bridge *br = p->br;
 struct net_device *dev = p->dev;

 sysfs_remove_link(br->ifobj, p->dev->name);

 nbp_delete_promisc(p);

 spin_lock_bh(&br->lock);
 br_stp_disable_port(p);
 spin_unlock_bh(&br->lock);

 br_ifinfo_notify(RTM_DELLINK, ((void*)0), p);

 list_del_rcu(&p->list);
 if (netdev_get_fwd_headroom(dev) == br->dev->needed_headroom)
  update_headroom(br, get_max_headroom(br));
 netdev_reset_rx_headroom(dev);

 nbp_vlan_flush(p);
 br_fdb_delete_by_port(br, p, 0, 1);
 switchdev_deferred_process();
 nbp_backup_clear(p);

 nbp_update_port_count(br);

 netdev_upper_dev_unlink(dev, br->dev);

 dev->priv_flags &= ~IFF_BRIDGE_PORT;

 netdev_rx_handler_unregister(dev);

 br_multicast_del_port(p);

 kobject_uevent(&p->kobj, KOBJ_REMOVE);
 kobject_del(&p->kobj);

 br_netpoll_disable(p);

 call_rcu(&p->rcu, destroy_nbp_rcu);
}
