
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct batadv_unicast_4addr_packet {int dummy; } ;
struct batadv_priv {int distributed_arp_table; } ;
struct batadv_dat_entry {int mac_addr; } ;
typedef int __be32 ;


 scalar_t__ ARPOP_REQUEST ;
 int BATADV_CNT_DAT_CACHED_REPLY_TX ;
 int BATADV_P_DAT_CACHE_REPLY ;
 int NET_XMIT_DROP ;
 int atomic_read (int *) ;
 scalar_t__ batadv_arp_get_type (struct batadv_priv*,struct sk_buff*,int) ;
 int * batadv_arp_hw_src (struct sk_buff*,int) ;
 int batadv_arp_ip_dst (struct sk_buff*,int) ;
 int batadv_arp_ip_src (struct sk_buff*,int) ;
 struct sk_buff* batadv_dat_arp_create_reply (struct batadv_priv*,int ,int ,int ,int *,unsigned short) ;
 int batadv_dat_entry_add (struct batadv_priv*,int ,int *,unsigned short) ;
 struct batadv_dat_entry* batadv_dat_entry_hash_find (struct batadv_priv*,int ,unsigned short) ;
 int batadv_dat_entry_put (struct batadv_dat_entry*) ;
 unsigned short batadv_dat_get_vid (struct sk_buff*,int*) ;
 int batadv_dbg_arp (struct batadv_priv*,struct sk_buff*,int,char*) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 int batadv_send_skb_via_tt (struct batadv_priv*,struct sk_buff*,int *,unsigned short) ;
 int batadv_send_skb_via_tt_4addr (struct batadv_priv*,struct sk_buff*,int ,int *,unsigned short) ;
 int kfree_skb (struct sk_buff*) ;

bool batadv_dat_snoop_incoming_arp_request(struct batadv_priv *bat_priv,
        struct sk_buff *skb, int hdr_size)
{
 u16 type;
 __be32 ip_src, ip_dst;
 u8 *hw_src;
 struct sk_buff *skb_new;
 struct batadv_dat_entry *dat_entry = ((void*)0);
 bool ret = 0;
 unsigned short vid;
 int err;

 if (!atomic_read(&bat_priv->distributed_arp_table))
  goto out;

 vid = batadv_dat_get_vid(skb, &hdr_size);

 type = batadv_arp_get_type(bat_priv, skb, hdr_size);
 if (type != ARPOP_REQUEST)
  goto out;

 hw_src = batadv_arp_hw_src(skb, hdr_size);
 ip_src = batadv_arp_ip_src(skb, hdr_size);
 ip_dst = batadv_arp_ip_dst(skb, hdr_size);

 batadv_dbg_arp(bat_priv, skb, hdr_size, "Parsing incoming ARP REQUEST");

 batadv_dat_entry_add(bat_priv, ip_src, hw_src, vid);

 dat_entry = batadv_dat_entry_hash_find(bat_priv, ip_dst, vid);
 if (!dat_entry)
  goto out;

 skb_new = batadv_dat_arp_create_reply(bat_priv, ip_dst, ip_src,
           dat_entry->mac_addr, hw_src, vid);
 if (!skb_new)
  goto out;





 if (hdr_size == sizeof(struct batadv_unicast_4addr_packet))
  err = batadv_send_skb_via_tt_4addr(bat_priv, skb_new,
         BATADV_P_DAT_CACHE_REPLY,
         ((void*)0), vid);
 else
  err = batadv_send_skb_via_tt(bat_priv, skb_new, ((void*)0), vid);

 if (err != NET_XMIT_DROP) {
  batadv_inc_counter(bat_priv, BATADV_CNT_DAT_CACHED_REPLY_TX);
  ret = 1;
 }
out:
 if (dat_entry)
  batadv_dat_entry_put(dat_entry);
 if (ret)
  kfree_skb(skb);
 return ret;
}
