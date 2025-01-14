
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net_bridge_port {scalar_t__ state; struct net_bridge* br; } ;
struct net_bridge {int multicast_lock; TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct br_mdb_entry {scalar_t__ ifindex; int state; } ;
struct br_ip {int dummy; } ;
struct TYPE_2__ {scalar_t__ ifindex; } ;


 int BROPT_MULTICAST_ENABLED ;
 scalar_t__ BR_STATE_DISABLED ;
 int EINVAL ;
 int ENODEV ;
 struct net_device* __dev_get_by_index (struct net*,scalar_t__) ;
 int __mdb_entry_to_br_ip (struct br_mdb_entry*,struct br_ip*) ;
 int br_mdb_add_group (struct net_bridge*,struct net_bridge_port*,struct br_ip*,int ) ;
 int br_opt_get (struct net_bridge*,int ) ;
 struct net_bridge_port* br_port_get_rtnl (struct net_device*) ;
 int netif_running (TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int __br_mdb_add(struct net *net, struct net_bridge *br,
   struct br_mdb_entry *entry)
{
 struct br_ip ip;
 struct net_device *dev;
 struct net_bridge_port *p = ((void*)0);
 int ret;

 if (!netif_running(br->dev) || !br_opt_get(br, BROPT_MULTICAST_ENABLED))
  return -EINVAL;

 if (entry->ifindex != br->dev->ifindex) {
  dev = __dev_get_by_index(net, entry->ifindex);
  if (!dev)
   return -ENODEV;

  p = br_port_get_rtnl(dev);
  if (!p || p->br != br || p->state == BR_STATE_DISABLED)
   return -EINVAL;
 }

 __mdb_entry_to_br_ip(entry, &ip);

 spin_lock_bh(&br->multicast_lock);
 ret = br_mdb_add_group(br, p, &ip, entry->state);
 spin_unlock_bh(&br->multicast_lock);
 return ret;
}
