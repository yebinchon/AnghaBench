
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
struct fib_result {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int protocol; } ;


 int EINVAL ;
 scalar_t__ IN_DEV_MFORWARD (struct in_device*) ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 int ip_check_mc_rcu (struct in_device*,int ,int ,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_route_input_mc (struct sk_buff*,int ,int ,int ,struct net_device*,int) ;
 int ip_route_input_slow (struct sk_buff*,int ,int ,int ,struct net_device*,struct fib_result*) ;
 int ipv4_is_local_multicast (int ) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 scalar_t__ netif_is_l3_slave (struct net_device*) ;

int ip_route_input_rcu(struct sk_buff *skb, __be32 daddr, __be32 saddr,
         u8 tos, struct net_device *dev, struct fib_result *res)
{
 if (ipv4_is_multicast(daddr)) {
  struct in_device *in_dev = __in_dev_get_rcu(dev);
  int our = 0;
  int err = -EINVAL;

  if (!in_dev)
   return err;
  our = ip_check_mc_rcu(in_dev, daddr, saddr,
          ip_hdr(skb)->protocol);


  if (!our && netif_is_l3_slave(dev)) {
   struct in_device *l3_in_dev;

   l3_in_dev = __in_dev_get_rcu(skb->dev);
   if (l3_in_dev)
    our = ip_check_mc_rcu(l3_in_dev, daddr, saddr,
            ip_hdr(skb)->protocol);
  }

  if (our





     ) {
   err = ip_route_input_mc(skb, daddr, saddr,
      tos, dev, our);
  }
  return err;
 }

 return ip_route_input_slow(skb, daddr, saddr, tos, dev, res);
}
