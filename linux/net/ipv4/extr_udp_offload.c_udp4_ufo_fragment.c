
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {scalar_t__ check; } ;
struct sk_buff {unsigned int len; int encap_hdr_csum; int ip_summed; scalar_t__ encapsulation; } ;
struct iphdr {int daddr; int saddr; } ;
typedef int netdev_features_t ;
typedef int __wsum ;
struct TYPE_2__ {int gso_type; unsigned int gso_size; } ;


 int CHECKSUM_UNNECESSARY ;
 scalar_t__ CSUM_MANGLED_0 ;
 int EINVAL ;
 struct sk_buff* ERR_PTR (int ) ;
 int NETIF_F_HW_CSUM ;
 int SKB_GSO_UDP ;
 int SKB_GSO_UDP_L4 ;
 int SKB_GSO_UDP_TUNNEL ;
 int SKB_GSO_UDP_TUNNEL_CSUM ;
 struct sk_buff* __udp_gso_segment (struct sk_buff*,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_checksum (struct sk_buff*,int ,unsigned int,int ) ;
 struct sk_buff* skb_segment (struct sk_buff*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct sk_buff* skb_udp_tunnel_segment (struct sk_buff*,int ,int) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 scalar_t__ udp_v4_check (unsigned int,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *udp4_ufo_fragment(struct sk_buff *skb,
      netdev_features_t features)
{
 struct sk_buff *segs = ERR_PTR(-EINVAL);
 unsigned int mss;
 __wsum csum;
 struct udphdr *uh;
 struct iphdr *iph;

 if (skb->encapsulation &&
     (skb_shinfo(skb)->gso_type &
      (SKB_GSO_UDP_TUNNEL|SKB_GSO_UDP_TUNNEL_CSUM))) {
  segs = skb_udp_tunnel_segment(skb, features, 0);
  goto out;
 }

 if (!(skb_shinfo(skb)->gso_type & (SKB_GSO_UDP | SKB_GSO_UDP_L4)))
  goto out;

 if (!pskb_may_pull(skb, sizeof(struct udphdr)))
  goto out;

 if (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4)
  return __udp_gso_segment(skb, features);

 mss = skb_shinfo(skb)->gso_size;
 if (unlikely(skb->len <= mss))
  goto out;






 uh = udp_hdr(skb);
 iph = ip_hdr(skb);

 uh->check = 0;
 csum = skb_checksum(skb, 0, skb->len, 0);
 uh->check = udp_v4_check(skb->len, iph->saddr, iph->daddr, csum);
 if (uh->check == 0)
  uh->check = CSUM_MANGLED_0;

 skb->ip_summed = CHECKSUM_UNNECESSARY;





 if (!skb->encap_hdr_csum)
  features |= NETIF_F_HW_CSUM;




 segs = skb_segment(skb, features);
out:
 return segs;
}
