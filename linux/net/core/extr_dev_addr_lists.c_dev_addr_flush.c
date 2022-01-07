
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * dev_addr; int dev_addrs; } ;


 int __hw_addr_flush (int *) ;

void dev_addr_flush(struct net_device *dev)
{


 __hw_addr_flush(&dev->dev_addrs);
 dev->dev_addr = ((void*)0);
}
