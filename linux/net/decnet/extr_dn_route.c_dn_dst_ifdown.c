
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct neighbour {struct net_device* dev; } ;
struct dst_entry {int dummy; } ;
struct dn_route {struct neighbour* n; } ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;


 int dev_hold (struct net_device*) ;
 TYPE_1__* dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;

__attribute__((used)) static void dn_dst_ifdown(struct dst_entry *dst, struct net_device *dev, int how)
{
 if (how) {
  struct dn_route *rt = (struct dn_route *) dst;
  struct neighbour *n = rt->n;

  if (n && n->dev == dev) {
   n->dev = dev_net(dev)->loopback_dev;
   dev_hold(n->dev);
   dev_put(dev);
  }
 }
}
