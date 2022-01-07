
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int uc; } ;


 int __hw_addr_flush (int *) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

void dev_uc_flush(struct net_device *dev)
{
 netif_addr_lock_bh(dev);
 __hw_addr_flush(&dev->uc);
 netif_addr_unlock_bh(dev);
}
