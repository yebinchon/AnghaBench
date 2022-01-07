
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct br_vlan_bind_walk_data {struct net_device* result; int vid; } ;


 int br_vlan_match_bind_vlan_dev_fn ;
 int netdev_walk_all_upper_dev_rcu (struct net_device*,int ,struct br_vlan_bind_walk_data*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct net_device *
br_vlan_get_upper_bind_vlan_dev(struct net_device *dev, u16 vid)
{
 struct br_vlan_bind_walk_data data = {
  .vid = vid,
 };

 rcu_read_lock();
 netdev_walk_all_upper_dev_rcu(dev, br_vlan_match_bind_vlan_dev_fn,
          &data);
 rcu_read_unlock();

 return data.result;
}
