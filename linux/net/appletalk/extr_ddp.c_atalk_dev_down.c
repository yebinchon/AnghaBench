
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int aarp_device_down (struct net_device*) ;
 int atif_drop_device (struct net_device*) ;
 int atrtr_device_down (struct net_device*) ;

__attribute__((used)) static inline void atalk_dev_down(struct net_device *dev)
{
 atrtr_device_down(dev);
 aarp_device_down(dev);
 atif_drop_device(dev);
}
