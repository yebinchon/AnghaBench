
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int soft_iface; } ;
typedef int __be32 ;


 int ARPOP_REPLY ;
 unsigned short BATADV_VLAN_HAS_TAG ;
 int ETH_P_8021Q ;
 int ETH_P_ARP ;
 unsigned short VLAN_VID_MASK ;
 struct sk_buff* arp_create (int ,int ,int ,int ,int ,int *,int *,int *) ;
 int htons (int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 struct sk_buff* vlan_insert_tag (struct sk_buff*,int ,unsigned short) ;

__attribute__((used)) static struct sk_buff *
batadv_dat_arp_create_reply(struct batadv_priv *bat_priv, __be32 ip_src,
       __be32 ip_dst, u8 *hw_src, u8 *hw_dst,
       unsigned short vid)
{
 struct sk_buff *skb;

 skb = arp_create(ARPOP_REPLY, ETH_P_ARP, ip_dst, bat_priv->soft_iface,
    ip_src, hw_dst, hw_src, hw_dst);
 if (!skb)
  return ((void*)0);

 skb_reset_mac_header(skb);

 if (vid & BATADV_VLAN_HAS_TAG)
  skb = vlan_insert_tag(skb, htons(ETH_P_8021Q),
          vid & VLAN_VID_MASK);

 return skb;
}
