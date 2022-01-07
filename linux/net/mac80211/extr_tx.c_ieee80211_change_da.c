
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct sta_info {TYPE_1__ sta; } ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_dest; } ;


 int ETH_HLEN ;
 int ether_addr_copy (int ,int ) ;
 int skb_ensure_writable (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ieee80211_change_da(struct sk_buff *skb, struct sta_info *sta)
{
 struct ethhdr *eth;
 int err;

 err = skb_ensure_writable(skb, ETH_HLEN);
 if (unlikely(err))
  return err;

 eth = (void *)skb->data;
 ether_addr_copy(eth->h_dest, sta->sta.addr);

 return 0;
}
