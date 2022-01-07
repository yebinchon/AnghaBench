
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {size_t (* get_slave_size ) (struct net_device*,struct net_device const*) ;} ;
struct nlattr {int dummy; } ;
struct net_device {struct rtnl_link_ops* rtnl_link_ops; } ;


 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 size_t nla_total_size (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 size_t stub1 (struct net_device*,struct net_device const*) ;

__attribute__((used)) static size_t rtnl_link_get_slave_info_data_size(const struct net_device *dev)
{
 struct net_device *master_dev;
 const struct rtnl_link_ops *ops;
 size_t size = 0;

 rcu_read_lock();

 master_dev = netdev_master_upper_dev_get_rcu((struct net_device *)dev);
 if (!master_dev)
  goto out;

 ops = master_dev->rtnl_link_ops;
 if (!ops || !ops->get_slave_size)
  goto out;

 size = nla_total_size(sizeof(struct nlattr)) +
        ops->get_slave_size(master_dev, dev);

out:
 rcu_read_unlock();
 return size;
}
