
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ rtnl_link_ops; } ;


 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool rtnl_have_link_slave_info(const struct net_device *dev)
{
 struct net_device *master_dev;
 bool ret = 0;

 rcu_read_lock();

 master_dev = netdev_master_upper_dev_get_rcu((struct net_device *)dev);
 if (master_dev && master_dev->rtnl_link_ops)
  ret = 1;
 rcu_read_unlock();
 return ret;
}
