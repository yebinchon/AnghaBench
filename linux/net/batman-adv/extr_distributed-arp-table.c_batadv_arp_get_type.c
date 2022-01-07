
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; int dev; } ;
struct ethhdr {scalar_t__ h_proto; } ;
struct batadv_priv {int dummy; } ;
struct arphdr {scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_hln; int ar_pln; scalar_t__ ar_op; } ;
typedef int __be32 ;


 int ARPHRD_ETHER ;
 int ARPOP_REQUEST ;
 scalar_t__ ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 int ETH_P_ARP ;
 int ETH_P_IP ;
 scalar_t__ arp_hdr_len (int ) ;
 int * batadv_arp_hw_dst (struct sk_buff*,int) ;
 int * batadv_arp_hw_src (struct sk_buff*,int) ;
 int batadv_arp_ip_dst (struct sk_buff*,int) ;
 int batadv_arp_ip_src (struct sk_buff*,int) ;
 scalar_t__ htons (int ) ;
 scalar_t__ ipv4_is_lbcast (int ) ;
 scalar_t__ ipv4_is_loopback (int ) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 scalar_t__ ipv4_is_zeronet (int ) ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int ntohs (scalar_t__) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 batadv_arp_get_type(struct batadv_priv *bat_priv,
          struct sk_buff *skb, int hdr_size)
{
 struct arphdr *arphdr;
 struct ethhdr *ethhdr;
 __be32 ip_src, ip_dst;
 u8 *hw_src, *hw_dst;
 u16 type = 0;


 if (unlikely(!pskb_may_pull(skb, hdr_size + ETH_HLEN)))
  goto out;

 ethhdr = (struct ethhdr *)(skb->data + hdr_size);

 if (ethhdr->h_proto != htons(ETH_P_ARP))
  goto out;


 if (unlikely(!pskb_may_pull(skb, hdr_size + ETH_HLEN +
        arp_hdr_len(skb->dev))))
  goto out;

 arphdr = (struct arphdr *)(skb->data + hdr_size + ETH_HLEN);


 if (arphdr->ar_hrd != htons(ARPHRD_ETHER))
  goto out;

 if (arphdr->ar_pro != htons(ETH_P_IP))
  goto out;

 if (arphdr->ar_hln != ETH_ALEN)
  goto out;

 if (arphdr->ar_pln != 4)
  goto out;




 ip_src = batadv_arp_ip_src(skb, hdr_size);
 ip_dst = batadv_arp_ip_dst(skb, hdr_size);
 if (ipv4_is_loopback(ip_src) || ipv4_is_multicast(ip_src) ||
     ipv4_is_loopback(ip_dst) || ipv4_is_multicast(ip_dst) ||
     ipv4_is_zeronet(ip_src) || ipv4_is_lbcast(ip_src) ||
     ipv4_is_zeronet(ip_dst) || ipv4_is_lbcast(ip_dst))
  goto out;

 hw_src = batadv_arp_hw_src(skb, hdr_size);
 if (is_zero_ether_addr(hw_src) || is_multicast_ether_addr(hw_src))
  goto out;


 if (arphdr->ar_op != htons(ARPOP_REQUEST)) {
  hw_dst = batadv_arp_hw_dst(skb, hdr_size);
  if (is_zero_ether_addr(hw_dst) ||
      is_multicast_ether_addr(hw_dst))
   goto out;
 }

 type = ntohs(arphdr->ar_op);
out:
 return type;
}
