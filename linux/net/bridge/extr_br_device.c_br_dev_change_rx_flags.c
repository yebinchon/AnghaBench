
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int IFF_PROMISC ;
 int br_manage_promisc (int ) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static void br_dev_change_rx_flags(struct net_device *dev, int change)
{
 if (change & IFF_PROMISC)
  br_manage_promisc(netdev_priv(dev));
}
