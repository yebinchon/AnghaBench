
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;
struct br_vlan_link_state_walk_data {struct net_bridge* br; } ;


 int br_vlan_link_state_change_fn ;
 int netdev_walk_all_upper_dev_rcu (struct net_device*,int ,struct br_vlan_link_state_walk_data*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void br_vlan_link_state_change(struct net_device *dev,
          struct net_bridge *br)
{
 struct br_vlan_link_state_walk_data data = {
  .br = br
 };

 rcu_read_lock();
 netdev_walk_all_upper_dev_rcu(dev, br_vlan_link_state_change_fn,
          &data);
 rcu_read_unlock();
}
