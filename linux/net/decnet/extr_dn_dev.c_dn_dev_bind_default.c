
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;


 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 struct net_device* dn_dev_get_default () ;
 int dn_dev_get_first (struct net_device*,int *) ;
 TYPE_1__ init_net ;

int dn_dev_bind_default(__le16 *addr)
{
 struct net_device *dev;
 int rv;
 dev = dn_dev_get_default();
last_chance:
 if (dev) {
  rv = dn_dev_get_first(dev, addr);
  dev_put(dev);
  if (rv == 0 || dev == init_net.loopback_dev)
   return rv;
 }
 dev = init_net.loopback_dev;
 dev_hold(dev);
 goto last_chance;
}
