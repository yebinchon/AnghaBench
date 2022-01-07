
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int distributed_arp_table; } ;
struct batadv_dat_entry {int ip; int mac_addr; } ;
typedef int __be32 ;


 scalar_t__ ARPOP_REPLY ;
 int BATADV_DBG_DAT ;
 int atomic_read (int *) ;
 scalar_t__ batadv_arp_get_type (struct batadv_priv*,struct sk_buff*,int) ;
 int * batadv_arp_hw_dst (struct sk_buff*,int) ;
 int * batadv_arp_hw_src (struct sk_buff*,int) ;
 int batadv_arp_ip_dst (struct sk_buff*,int) ;
 int batadv_arp_ip_src (struct sk_buff*,int) ;
 int batadv_bla_check_claim (struct batadv_priv*,int *,unsigned short) ;
 scalar_t__ batadv_compare_eth (int *,int ) ;
 int batadv_dat_entry_add (struct batadv_priv*,int ,int *,unsigned short) ;
 struct batadv_dat_entry* batadv_dat_entry_hash_find (struct batadv_priv*,int ,unsigned short) ;
 int batadv_dat_entry_put (struct batadv_dat_entry*) ;
 unsigned short batadv_dat_get_vid (struct sk_buff*,int*) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int *,...) ;
 int batadv_dbg_arp (struct batadv_priv*,struct sk_buff*,int,char*) ;
 int batadv_is_my_client (struct batadv_priv*,int *,unsigned short) ;
 int kfree_skb (struct sk_buff*) ;

bool batadv_dat_snoop_incoming_arp_reply(struct batadv_priv *bat_priv,
      struct sk_buff *skb, int hdr_size)
{
 struct batadv_dat_entry *dat_entry = ((void*)0);
 u16 type;
 __be32 ip_src, ip_dst;
 u8 *hw_src, *hw_dst;
 bool dropped = 0;
 unsigned short vid;

 if (!atomic_read(&bat_priv->distributed_arp_table))
  goto out;

 vid = batadv_dat_get_vid(skb, &hdr_size);

 type = batadv_arp_get_type(bat_priv, skb, hdr_size);
 if (type != ARPOP_REPLY)
  goto out;

 batadv_dbg_arp(bat_priv, skb, hdr_size, "Parsing incoming ARP REPLY");

 hw_src = batadv_arp_hw_src(skb, hdr_size);
 ip_src = batadv_arp_ip_src(skb, hdr_size);
 hw_dst = batadv_arp_hw_dst(skb, hdr_size);
 ip_dst = batadv_arp_ip_dst(skb, hdr_size);







 dat_entry = batadv_dat_entry_hash_find(bat_priv, ip_src, vid);
 if (dat_entry && batadv_compare_eth(hw_src, dat_entry->mac_addr)) {
  batadv_dbg(BATADV_DBG_DAT, bat_priv, "Doubled ARP reply removed: ARP MSG = [src: %pM-%pI4 dst: %pM-%pI4]; dat_entry: %pM-%pI4\n",
      hw_src, &ip_src, hw_dst, &ip_dst,
      dat_entry->mac_addr, &dat_entry->ip);
  dropped = 1;
 }




 batadv_dat_entry_add(bat_priv, ip_src, hw_src, vid);
 batadv_dat_entry_add(bat_priv, ip_dst, hw_dst, vid);

 if (dropped)
  goto out;







 if (!batadv_bla_check_claim(bat_priv, hw_src, vid)) {
  batadv_dbg(BATADV_DBG_DAT, bat_priv,
      "Device %pM claimed by another backbone gw. Drop ARP reply.\n",
      hw_src);
  dropped = 1;
  goto out;
 }




 dropped = !batadv_is_my_client(bat_priv, hw_dst, vid);




 dropped |= batadv_is_my_client(bat_priv, hw_src, vid);
out:
 if (dropped)
  kfree_skb(skb);
 if (dat_entry)
  batadv_dat_entry_put(dat_entry);

 return dropped;
}
