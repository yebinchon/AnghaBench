
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct batadv_priv {int distributed_arp_table; } ;
struct batadv_forw_packet {int skb; } ;
struct batadv_dat_entry {int dummy; } ;
struct batadv_bcast_packet {int dummy; } ;
typedef int __be32 ;


 scalar_t__ ARPOP_REQUEST ;
 int BATADV_DBG_DAT ;
 int atomic_read (int *) ;
 scalar_t__ batadv_arp_get_type (struct batadv_priv*,int ,int) ;
 int batadv_arp_ip_dst (int ,int) ;
 struct batadv_dat_entry* batadv_dat_entry_hash_find (struct batadv_priv*,int ,unsigned short) ;
 int batadv_dat_entry_put (struct batadv_dat_entry*) ;
 unsigned short batadv_dat_get_vid (int ,int*) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int *) ;
 scalar_t__ batadv_forw_packet_is_rebroadcast (struct batadv_forw_packet*) ;

bool batadv_dat_drop_broadcast_packet(struct batadv_priv *bat_priv,
          struct batadv_forw_packet *forw_packet)
{
 u16 type;
 __be32 ip_dst;
 struct batadv_dat_entry *dat_entry = ((void*)0);
 bool ret = 0;
 int hdr_size = sizeof(struct batadv_bcast_packet);
 unsigned short vid;

 if (!atomic_read(&bat_priv->distributed_arp_table))
  goto out;




 if (batadv_forw_packet_is_rebroadcast(forw_packet))
  goto out;

 vid = batadv_dat_get_vid(forw_packet->skb, &hdr_size);

 type = batadv_arp_get_type(bat_priv, forw_packet->skb, hdr_size);
 if (type != ARPOP_REQUEST)
  goto out;

 ip_dst = batadv_arp_ip_dst(forw_packet->skb, hdr_size);
 dat_entry = batadv_dat_entry_hash_find(bat_priv, ip_dst, vid);

 if (!dat_entry) {
  batadv_dbg(BATADV_DBG_DAT, bat_priv,
      "ARP Request for %pI4: fallback\n", &ip_dst);
  goto out;
 }

 batadv_dbg(BATADV_DBG_DAT, bat_priv,
     "ARP Request for %pI4: fallback prevented\n", &ip_dst);
 ret = 1;

out:
 if (dat_entry)
  batadv_dat_entry_put(dat_entry);
 return ret;
}
