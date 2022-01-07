
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 int EINVAL ;
 int ETH_P_IP ;
 int IN_DEV_ROUTE_LOCALNET (struct in_device*) ;
 scalar_t__ IPPROTO_IGMP ;
 int fib_validate_source (struct sk_buff*,int ,int ,int ,int ,struct net_device*,struct in_device*,int *) ;
 scalar_t__ htons (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 scalar_t__ ipv4_is_lbcast (int ) ;
 int ipv4_is_local_multicast (int ) ;
 scalar_t__ ipv4_is_loopback (int ) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 scalar_t__ ipv4_is_zeronet (int ) ;

int ip_mc_validate_source(struct sk_buff *skb, __be32 daddr, __be32 saddr,
     u8 tos, struct net_device *dev,
     struct in_device *in_dev, u32 *itag)
{
 int err;


 if (!in_dev)
  return -EINVAL;

 if (ipv4_is_multicast(saddr) || ipv4_is_lbcast(saddr) ||
     skb->protocol != htons(ETH_P_IP))
  return -EINVAL;

 if (ipv4_is_loopback(saddr) && !IN_DEV_ROUTE_LOCALNET(in_dev))
  return -EINVAL;

 if (ipv4_is_zeronet(saddr)) {
  if (!ipv4_is_local_multicast(daddr) &&
      ip_hdr(skb)->protocol != IPPROTO_IGMP)
   return -EINVAL;
 } else {
  err = fib_validate_source(skb, saddr, 0, tos, 0, dev,
       in_dev, itag);
  if (err < 0)
   return err;
 }
 return 0;
}
