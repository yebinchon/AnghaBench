
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {unsigned long rx_dropped; unsigned long tx_dropped; unsigned long rx_nohandler; } ;
struct net_device_ops {int * (* ndo_get_stats ) (struct net_device*) ;int (* ndo_get_stats64 ) (struct net_device*,struct rtnl_link_stats64*) ;} ;
struct net_device {int rx_nohandler; int tx_dropped; int rx_dropped; int stats; struct net_device_ops* netdev_ops; } ;


 scalar_t__ atomic_long_read (int *) ;
 int memset (struct rtnl_link_stats64*,int ,int) ;
 int netdev_stats_to_stats64 (struct rtnl_link_stats64*,int *) ;
 int stub1 (struct net_device*,struct rtnl_link_stats64*) ;
 int * stub2 (struct net_device*) ;

struct rtnl_link_stats64 *dev_get_stats(struct net_device *dev,
     struct rtnl_link_stats64 *storage)
{
 const struct net_device_ops *ops = dev->netdev_ops;

 if (ops->ndo_get_stats64) {
  memset(storage, 0, sizeof(*storage));
  ops->ndo_get_stats64(dev, storage);
 } else if (ops->ndo_get_stats) {
  netdev_stats_to_stats64(storage, ops->ndo_get_stats(dev));
 } else {
  netdev_stats_to_stats64(storage, &dev->stats);
 }
 storage->rx_dropped += (unsigned long)atomic_long_read(&dev->rx_dropped);
 storage->tx_dropped += (unsigned long)atomic_long_read(&dev->tx_dropped);
 storage->rx_nohandler += (unsigned long)atomic_long_read(&dev->rx_nohandler);
 return storage;
}
