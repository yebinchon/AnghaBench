
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; int name; int priv_flags; } ;
struct failover_ops {scalar_t__ type; int name; int priv_flags; } ;
struct failover {int list; int failover_dev; int ops; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 int ENOMEM ;
 struct failover* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IFF_FAILOVER ;
 int dev_hold (struct net_device*) ;
 int failover_existing_slave_register (struct net_device*) ;
 int failover_list ;
 int failover_lock ;
 struct failover* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int netdev_info (struct net_device*,char*,int ) ;
 int rcu_assign_pointer (int ,struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct failover *failover_register(struct net_device *dev,
       struct failover_ops *ops)
{
 struct failover *failover;

 if (dev->type != ARPHRD_ETHER)
  return ERR_PTR(-EINVAL);

 failover = kzalloc(sizeof(*failover), GFP_KERNEL);
 if (!failover)
  return ERR_PTR(-ENOMEM);

 rcu_assign_pointer(failover->ops, ops);
 dev_hold(dev);
 dev->priv_flags |= IFF_FAILOVER;
 rcu_assign_pointer(failover->failover_dev, dev);

 spin_lock(&failover_lock);
 list_add_tail(&failover->list, &failover_list);
 spin_unlock(&failover_lock);

 netdev_info(dev, "failover master:%s registered\n", dev->name);

 failover_existing_slave_register(dev);

 return failover;
}
