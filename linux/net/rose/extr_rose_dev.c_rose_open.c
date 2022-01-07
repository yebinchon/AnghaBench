
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ dev_addr; } ;
typedef int rose_address ;


 int netif_start_queue (struct net_device*) ;
 int rose_add_loopback_node (int *) ;

__attribute__((used)) static int rose_open(struct net_device *dev)
{
 int err;

 err = rose_add_loopback_node((rose_address *)dev->dev_addr);
 if (err)
  return err;

 netif_start_queue(dev);

 return 0;
}
