
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int uc; } ;


 int __hw_addr_init (int *) ;

void dev_uc_init(struct net_device *dev)
{
 __hw_addr_init(&dev->uc);
}
