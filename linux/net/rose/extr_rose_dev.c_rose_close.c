
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ dev_addr; } ;
typedef int rose_address ;


 int netif_stop_queue (struct net_device*) ;
 int rose_del_loopback_node (int *) ;

__attribute__((used)) static int rose_close(struct net_device *dev)
{
 netif_stop_queue(dev);
 rose_del_loopback_node((rose_address *)dev->dev_addr);
 return 0;
}
