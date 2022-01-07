
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; } ;


 int IFF_EBRIDGE ;
 int dev_hold (struct net_device*) ;
 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct net_device *batadv_mcast_get_bridge(struct net_device *soft_iface)
{
 struct net_device *upper = soft_iface;

 rcu_read_lock();
 do {
  upper = netdev_master_upper_dev_get_rcu(upper);
 } while (upper && !(upper->priv_flags & IFF_EBRIDGE));

 if (upper)
  dev_hold(upper);
 rcu_read_unlock();

 return upper;
}
