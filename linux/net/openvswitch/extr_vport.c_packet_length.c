
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int protocol; } ;
struct net_device {int hard_header_len; } ;


 scalar_t__ VLAN_HLEN ;
 scalar_t__ eth_type_vlan (int ) ;
 int skb_vlan_tag_present (struct sk_buff const*) ;

__attribute__((used)) static int packet_length(const struct sk_buff *skb,
    struct net_device *dev)
{
 int length = skb->len - dev->hard_header_len;

 if (!skb_vlan_tag_present(skb) &&
     eth_type_vlan(skb->protocol))
  length -= VLAN_HLEN;






 return length > 0 ? length : 0;
}
