
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void lec_tx_timeout(struct net_device *dev)
{
 pr_info("%s\n", dev->name);
 netif_trans_update(dev);
 netif_wake_queue(dev);
}
