
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int perm_addr; } ;
struct failover_ops {int (* slave_link_change ) (struct net_device*,struct net_device*) ;} ;


 int ASSERT_RTNL () ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 struct net_device* failover_get_bymac (int ,struct failover_ops**) ;
 int netif_is_failover_slave (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int stub1 (struct net_device*,struct net_device*) ;

__attribute__((used)) static int failover_slave_link_change(struct net_device *slave_dev)
{
 struct net_device *failover_dev;
 struct failover_ops *fops;

 if (!netif_is_failover_slave(slave_dev))
  goto done;

 ASSERT_RTNL();

 failover_dev = failover_get_bymac(slave_dev->perm_addr, &fops);
 if (!failover_dev)
  goto done;

 if (!netif_running(failover_dev))
  goto done;

 if (fops && fops->slave_link_change &&
     !fops->slave_link_change(slave_dev, failover_dev))
  return NOTIFY_OK;

done:
 return NOTIFY_DONE;
}
