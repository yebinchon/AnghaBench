
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int br_vlan_is_bind_vlan_dev_fn ;
 int netdev_walk_all_upper_dev_rcu (struct net_device*,int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool br_vlan_has_upper_bind_vlan_dev(struct net_device *dev)
{
 int found;

 rcu_read_lock();
 found = netdev_walk_all_upper_dev_rcu(dev, br_vlan_is_bind_vlan_dev_fn,
           ((void*)0));
 rcu_read_unlock();

 return !!found;
}
