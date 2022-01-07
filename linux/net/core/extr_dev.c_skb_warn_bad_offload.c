
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_1__* sk; struct net_device* dev; } ;
struct TYPE_4__ {scalar_t__ parent; } ;
struct net_device {int const features; TYPE_2__ dev; } ;
typedef int netdev_features_t ;
struct TYPE_3__ {int const sk_route_caps; } ;


 int KERN_WARNING ;
 int WARN (int,char*,char const*,int const*,int const*) ;
 char* dev_driver_string (scalar_t__) ;
 int net_ratelimit () ;
 char* netdev_name (struct net_device*) ;
 int skb_dump (int ,struct sk_buff const*,int) ;

__attribute__((used)) static void skb_warn_bad_offload(const struct sk_buff *skb)
{
 static const netdev_features_t null_features;
 struct net_device *dev = skb->dev;
 const char *name = "";

 if (!net_ratelimit())
  return;

 if (dev) {
  if (dev->dev.parent)
   name = dev_driver_string(dev->dev.parent);
  else
   name = netdev_name(dev);
 }
 skb_dump(KERN_WARNING, skb, 0);
 WARN(1, "%s: caps=(%pNF, %pNF)\n",
      name, dev ? &dev->features : &null_features,
      skb->sk ? &skb->sk->sk_route_caps : &null_features);
}
