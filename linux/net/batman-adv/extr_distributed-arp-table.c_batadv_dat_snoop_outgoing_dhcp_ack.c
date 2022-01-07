
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int distributed_arp_table; } ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {int h_source; } ;


 int BATADV_DHCP_CHADDR_LEN ;
 int atomic_read (int *) ;
 int batadv_dat_check_dhcp_ack (struct sk_buff*,int ,int *,int *,int *) ;
 int batadv_dat_put_dhcp (struct batadv_priv*,int *,int ,int ,int ,unsigned short) ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;

void batadv_dat_snoop_outgoing_dhcp_ack(struct batadv_priv *bat_priv,
     struct sk_buff *skb,
     __be16 proto,
     unsigned short vid)
{
 u8 chaddr[BATADV_DHCP_CHADDR_LEN];
 __be32 ip_src, yiaddr;

 if (!atomic_read(&bat_priv->distributed_arp_table))
  return;

 if (!batadv_dat_check_dhcp_ack(skb, proto, &ip_src, chaddr, &yiaddr))
  return;

 batadv_dat_put_dhcp(bat_priv, chaddr, yiaddr, eth_hdr(skb)->h_source,
       ip_src, vid);
}
