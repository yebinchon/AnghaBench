
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ h_proto; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ETH_P_8021Q ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int likely (int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool packet_extra_vlan_len_allowed(const struct net_device *dev,
       struct sk_buff *skb)
{




 if (unlikely(dev->type != ARPHRD_ETHER))
  return 0;

 skb_reset_mac_header(skb);
 return likely(eth_hdr(skb)->h_proto == htons(ETH_P_8021Q));
}
