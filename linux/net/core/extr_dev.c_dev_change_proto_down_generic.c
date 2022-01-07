
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int proto_down; } ;


 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

int dev_change_proto_down_generic(struct net_device *dev, bool proto_down)
{
 if (proto_down)
  netif_carrier_off(dev);
 else
  netif_carrier_on(dev);
 dev->proto_down = proto_down;
 return 0;
}
