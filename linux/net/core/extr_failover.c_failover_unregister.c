
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int name; } ;
struct failover {int list; int failover_dev; } ;


 int IFF_FAILOVER ;
 int dev_put (struct net_device*) ;
 int failover_lock ;
 int kfree (struct failover*) ;
 int list_del (int *) ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct net_device* rcu_dereference (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void failover_unregister(struct failover *failover)
{
 struct net_device *failover_dev;

 failover_dev = rcu_dereference(failover->failover_dev);

 netdev_info(failover_dev, "failover master:%s unregistered\n",
      failover_dev->name);

 failover_dev->priv_flags &= ~IFF_FAILOVER;
 dev_put(failover_dev);

 spin_lock(&failover_lock);
 list_del(&failover->list);
 spin_unlock(&failover_lock);

 kfree(failover);
}
