
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ encapsulation; } ;
struct net_device {scalar_t__ gso_max_segs; int gso_partial_features; } ;
struct iphdr {int frag_off; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {scalar_t__ gso_segs; int gso_type; } ;


 int IP_DF ;
 int NETIF_F_GSO_MASK ;
 int NETIF_F_TSO_MANGLEID ;
 int SKB_GSO_PARTIAL ;
 int SKB_GSO_TCPV4 ;
 int htons (int ) ;
 struct iphdr* inner_ip_hdr (struct sk_buff const*) ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static netdev_features_t gso_features_check(const struct sk_buff *skb,
         struct net_device *dev,
         netdev_features_t features)
{
 u16 gso_segs = skb_shinfo(skb)->gso_segs;

 if (gso_segs > dev->gso_max_segs)
  return features & ~NETIF_F_GSO_MASK;







 if (!(skb_shinfo(skb)->gso_type & SKB_GSO_PARTIAL))
  features &= ~dev->gso_partial_features;




 if (skb_shinfo(skb)->gso_type & SKB_GSO_TCPV4) {
  struct iphdr *iph = skb->encapsulation ?
        inner_ip_hdr(skb) : ip_hdr(skb);

  if (!(iph->frag_off & htons(IP_DF)))
   features &= ~NETIF_F_TSO_MANGLEID;
 }

 return features;
}
