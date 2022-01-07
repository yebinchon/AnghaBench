
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int multicast_lock; } ;


 int br_multicast_is_router (struct net_bridge*) ;
 struct net_bridge* netdev_priv (struct net_device const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool br_multicast_router(const struct net_device *dev)
{
 struct net_bridge *br = netdev_priv(dev);
 bool is_router;

 spin_lock_bh(&br->multicast_lock);
 is_router = br_multicast_is_router(br);
 spin_unlock_bh(&br->multicast_lock);
 return is_router;
}
