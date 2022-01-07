
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int * h_source; int h_proto; } ;
struct batadv_priv {int distributed_arp_table; } ;
typedef int __be32 ;
typedef int __be16 ;


 int BATADV_DBG_DAT ;
 int BATADV_DHCP_CHADDR_LEN ;
 scalar_t__ ETH_HLEN ;
 int atomic_read (int *) ;
 int batadv_dat_check_dhcp_ack (struct sk_buff*,int ,int *,int *,int *) ;
 int batadv_dat_entry_add (struct batadv_priv*,int ,int *,unsigned short) ;
 unsigned short batadv_dat_get_vid (struct sk_buff*,int*) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int *,int *,int ) ;
 int batadv_print_vid (unsigned short) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

void batadv_dat_snoop_incoming_dhcp_ack(struct batadv_priv *bat_priv,
     struct sk_buff *skb, int hdr_size)
{
 u8 chaddr[BATADV_DHCP_CHADDR_LEN];
 struct ethhdr *ethhdr;
 __be32 ip_src, yiaddr;
 unsigned short vid;
 __be16 proto;
 u8 *hw_src;

 if (!atomic_read(&bat_priv->distributed_arp_table))
  return;

 if (unlikely(!pskb_may_pull(skb, hdr_size + ETH_HLEN)))
  return;

 ethhdr = (struct ethhdr *)(skb->data + hdr_size);
 skb_set_network_header(skb, hdr_size + ETH_HLEN);
 proto = ethhdr->h_proto;

 if (!batadv_dat_check_dhcp_ack(skb, proto, &ip_src, chaddr, &yiaddr))
  return;

 hw_src = ethhdr->h_source;
 vid = batadv_dat_get_vid(skb, &hdr_size);

 batadv_dat_entry_add(bat_priv, yiaddr, chaddr, vid);
 batadv_dat_entry_add(bat_priv, ip_src, hw_src, vid);

 batadv_dbg(BATADV_DBG_DAT, bat_priv,
     "Snooped from incoming DHCPACK (server address): %pI4, %pM (vid: %i)\n",
     &ip_src, hw_src, batadv_print_vid(vid));
 batadv_dbg(BATADV_DBG_DAT, bat_priv,
     "Snooped from incoming DHCPACK (client address): %pI4, %pM (vid: %i)\n",
     &yiaddr, chaddr, batadv_print_vid(vid));
}
