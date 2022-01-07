
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dev_mc_sync (struct net_device*,struct net_device*) ;
 int dev_uc_sync (struct net_device*,struct net_device*) ;
 struct net_device* dsa_slave_to_master (struct net_device*) ;

__attribute__((used)) static void dsa_slave_set_rx_mode(struct net_device *dev)
{
 struct net_device *master = dsa_slave_to_master(dev);

 dev_mc_sync(master, dev);
 dev_uc_sync(master, dev);
}
