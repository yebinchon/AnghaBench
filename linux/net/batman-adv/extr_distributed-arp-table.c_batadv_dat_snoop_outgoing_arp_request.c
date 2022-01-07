
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int protocol; } ;
struct net_device {int dummy; } ;
struct batadv_priv {int distributed_arp_table; struct net_device* soft_iface; } ;
struct batadv_dat_entry {int mac_addr; } ;
typedef int __be32 ;


 scalar_t__ ARPOP_REQUEST ;
 int BATADV_CNT_RX ;
 int BATADV_CNT_RX_BYTES ;
 int BATADV_DBG_DAT ;
 int BATADV_P_DAT_DHT_GET ;
 scalar_t__ ETH_HLEN ;
 int atomic_read (int *) ;
 int batadv_add_counter (struct batadv_priv*,int ,scalar_t__) ;
 scalar_t__ batadv_arp_get_type (struct batadv_priv*,struct sk_buff*,int) ;
 int * batadv_arp_hw_src (struct sk_buff*,int) ;
 int batadv_arp_ip_dst (struct sk_buff*,int) ;
 int batadv_arp_ip_src (struct sk_buff*,int) ;
 int batadv_bla_check_claim (struct batadv_priv*,int ,unsigned short) ;
 struct sk_buff* batadv_dat_arp_create_reply (struct batadv_priv*,int ,int ,int ,int *,unsigned short) ;
 int batadv_dat_entry_add (struct batadv_priv*,int ,int *,unsigned short) ;
 struct batadv_dat_entry* batadv_dat_entry_hash_find (struct batadv_priv*,int ,unsigned short) ;
 int batadv_dat_entry_put (struct batadv_dat_entry*) ;
 int batadv_dat_forward_data (struct batadv_priv*,struct sk_buff*,int ,unsigned short,int ) ;
 unsigned short batadv_dat_get_vid (struct sk_buff*,int*) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,...) ;
 int batadv_dbg_arp (struct batadv_priv*,struct sk_buff*,int,char*) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 scalar_t__ batadv_is_my_client (struct batadv_priv*,int ,unsigned short) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int netif_rx (struct sk_buff*) ;

bool batadv_dat_snoop_outgoing_arp_request(struct batadv_priv *bat_priv,
        struct sk_buff *skb)
{
 u16 type = 0;
 __be32 ip_dst, ip_src;
 u8 *hw_src;
 bool ret = 0;
 struct batadv_dat_entry *dat_entry = ((void*)0);
 struct sk_buff *skb_new;
 struct net_device *soft_iface = bat_priv->soft_iface;
 int hdr_size = 0;
 unsigned short vid;

 if (!atomic_read(&bat_priv->distributed_arp_table))
  goto out;

 vid = batadv_dat_get_vid(skb, &hdr_size);

 type = batadv_arp_get_type(bat_priv, skb, hdr_size);



 if (type != ARPOP_REQUEST)
  goto out;

 batadv_dbg_arp(bat_priv, skb, hdr_size, "Parsing outgoing ARP REQUEST");

 ip_src = batadv_arp_ip_src(skb, hdr_size);
 hw_src = batadv_arp_hw_src(skb, hdr_size);
 ip_dst = batadv_arp_ip_dst(skb, hdr_size);

 batadv_dat_entry_add(bat_priv, ip_src, hw_src, vid);

 dat_entry = batadv_dat_entry_hash_find(bat_priv, ip_dst, vid);
 if (dat_entry) {
  if (batadv_is_my_client(bat_priv, dat_entry->mac_addr, vid)) {
   ret = 1;
   goto out;
  }






  if (!batadv_bla_check_claim(bat_priv,
         dat_entry->mac_addr, vid)) {
   batadv_dbg(BATADV_DBG_DAT, bat_priv,
       "Device %pM claimed by another backbone gw. Don't send ARP reply!",
       dat_entry->mac_addr);
   ret = 1;
   goto out;
  }

  skb_new = batadv_dat_arp_create_reply(bat_priv, ip_dst, ip_src,
            dat_entry->mac_addr,
            hw_src, vid);
  if (!skb_new)
   goto out;

  skb_new->protocol = eth_type_trans(skb_new, soft_iface);

  batadv_inc_counter(bat_priv, BATADV_CNT_RX);
  batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
       skb->len + ETH_HLEN + hdr_size);

  netif_rx(skb_new);
  batadv_dbg(BATADV_DBG_DAT, bat_priv, "ARP request replied locally\n");
  ret = 1;
 } else {

  ret = batadv_dat_forward_data(bat_priv, skb, ip_dst, vid,
           BATADV_P_DAT_DHT_GET);
 }
out:
 if (dat_entry)
  batadv_dat_entry_put(dat_entry);
 return ret;
}
