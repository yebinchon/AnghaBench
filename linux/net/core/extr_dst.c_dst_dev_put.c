
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dst_entry {struct net_device* dev; int output; int input; TYPE_1__* ops; int obsolete; } ;
struct TYPE_2__ {int (* ifdown ) (struct dst_entry*,struct net_device*,int) ;} ;


 int DST_OBSOLETE_DEAD ;
 struct net_device* blackhole_netdev ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dst_discard ;
 int dst_discard_out ;
 int stub1 (struct dst_entry*,struct net_device*,int) ;

void dst_dev_put(struct dst_entry *dst)
{
 struct net_device *dev = dst->dev;

 dst->obsolete = DST_OBSOLETE_DEAD;
 if (dst->ops->ifdown)
  dst->ops->ifdown(dst, dev, 1);
 dst->input = dst_discard;
 dst->output = dst_discard_out;
 dst->dev = blackhole_netdev;
 dev_hold(dst->dev);
 dev_put(dev);
}
