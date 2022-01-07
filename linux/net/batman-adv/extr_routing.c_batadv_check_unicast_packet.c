
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ethhdr {int h_dest; int h_source; } ;
struct batadv_priv {int dummy; } ;


 int EBADR ;
 int ENODATA ;
 int EREMOTE ;
 int batadv_is_my_mac (struct batadv_priv*,int ) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int is_valid_ether_addr (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int batadv_check_unicast_packet(struct batadv_priv *bat_priv,
           struct sk_buff *skb, int hdr_size)
{
 struct ethhdr *ethhdr;


 if (unlikely(!pskb_may_pull(skb, hdr_size)))
  return -ENODATA;

 ethhdr = eth_hdr(skb);


 if (!is_valid_ether_addr(ethhdr->h_dest))
  return -EBADR;


 if (is_multicast_ether_addr(ethhdr->h_source))
  return -EBADR;


 if (!batadv_is_my_mac(bat_priv, ethhdr->h_dest))
  return -EREMOTE;

 return 0;
}
