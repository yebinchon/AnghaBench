
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int distributed_arp_table; } ;
typedef int __be32 ;


 scalar_t__ ARPOP_REPLY ;
 int BATADV_P_DAT_DHT_PUT ;
 int atomic_read (int *) ;
 scalar_t__ batadv_arp_get_type (struct batadv_priv*,struct sk_buff*,int) ;
 int * batadv_arp_hw_dst (struct sk_buff*,int) ;
 int * batadv_arp_hw_src (struct sk_buff*,int) ;
 int batadv_arp_ip_dst (struct sk_buff*,int) ;
 int batadv_arp_ip_src (struct sk_buff*,int) ;
 int batadv_dat_entry_add (struct batadv_priv*,int ,int *,unsigned short) ;
 int batadv_dat_forward_data (struct batadv_priv*,struct sk_buff*,int ,unsigned short,int ) ;
 unsigned short batadv_dat_get_vid (struct sk_buff*,int*) ;
 int batadv_dbg_arp (struct batadv_priv*,struct sk_buff*,int,char*) ;

void batadv_dat_snoop_outgoing_arp_reply(struct batadv_priv *bat_priv,
      struct sk_buff *skb)
{
 u16 type;
 __be32 ip_src, ip_dst;
 u8 *hw_src, *hw_dst;
 int hdr_size = 0;
 unsigned short vid;

 if (!atomic_read(&bat_priv->distributed_arp_table))
  return;

 vid = batadv_dat_get_vid(skb, &hdr_size);

 type = batadv_arp_get_type(bat_priv, skb, hdr_size);
 if (type != ARPOP_REPLY)
  return;

 batadv_dbg_arp(bat_priv, skb, hdr_size, "Parsing outgoing ARP REPLY");

 hw_src = batadv_arp_hw_src(skb, hdr_size);
 ip_src = batadv_arp_ip_src(skb, hdr_size);
 hw_dst = batadv_arp_hw_dst(skb, hdr_size);
 ip_dst = batadv_arp_ip_dst(skb, hdr_size);

 batadv_dat_entry_add(bat_priv, ip_src, hw_src, vid);
 batadv_dat_entry_add(bat_priv, ip_dst, hw_dst, vid);




 batadv_dat_forward_data(bat_priv, skb, ip_src, vid,
    BATADV_P_DAT_DHT_PUT);
 batadv_dat_forward_data(bat_priv, skb, ip_dst, vid,
    BATADV_P_DAT_DHT_PUT);
}
