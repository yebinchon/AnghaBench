
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ethhdr {int h_source; int h_dest; } ;
struct batadv_hard_iface {int dummy; } ;


 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int is_broadcast_ether_addr (int ) ;
 int is_valid_ether_addr (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ skb_cow (struct sk_buff*,int ) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

bool batadv_check_management_packet(struct sk_buff *skb,
        struct batadv_hard_iface *hard_iface,
        int header_len)
{
 struct ethhdr *ethhdr;


 if (unlikely(!pskb_may_pull(skb, header_len)))
  return 0;

 ethhdr = eth_hdr(skb);


 if (!is_broadcast_ether_addr(ethhdr->h_dest))
  return 0;


 if (!is_valid_ether_addr(ethhdr->h_source))
  return 0;


 if (skb_cow(skb, 0) < 0)
  return 0;


 if (skb_linearize(skb) < 0)
  return 0;

 return 1;
}
