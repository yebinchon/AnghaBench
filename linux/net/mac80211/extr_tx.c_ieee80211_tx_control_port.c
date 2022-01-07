
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct wiphy {int dummy; } ;
struct sk_buff {struct net_device* dev; int protocol; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int const* addr; } ;
struct ieee80211_sub_if_data {scalar_t__ control_port_protocol; TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_3__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ethhdr {scalar_t__ h_proto; int h_source; int h_dest; } ;
typedef scalar_t__ __be16 ;


 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int ETH_P_802_3 ;
 int ETH_P_PREAUTH ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 scalar_t__ IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 int __ieee80211_subif_start_xmit (struct sk_buff*,struct net_device*,scalar_t__,int ) ;
 scalar_t__ cpu_to_be16 (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int htons (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int memcpy (int ,int const*,int ) ;
 struct ethhdr* skb_push (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int const*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;

int ieee80211_tx_control_port(struct wiphy *wiphy, struct net_device *dev,
         const u8 *buf, size_t len,
         const u8 *dest, __be16 proto, bool unencrypted)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct ethhdr *ehdr;
 u32 flags;




 if (proto != sdata->control_port_protocol &&
     proto != cpu_to_be16(ETH_P_PREAUTH))
  return -EINVAL;

 if (unencrypted)
  flags = IEEE80211_TX_INTFL_DONT_ENCRYPT;
 else
  flags = 0;

 skb = dev_alloc_skb(local->hw.extra_tx_headroom +
       sizeof(struct ethhdr) + len);
 if (!skb)
  return -ENOMEM;

 skb_reserve(skb, local->hw.extra_tx_headroom + sizeof(struct ethhdr));

 skb_put_data(skb, buf, len);

 ehdr = skb_push(skb, sizeof(struct ethhdr));
 memcpy(ehdr->h_dest, dest, ETH_ALEN);
 memcpy(ehdr->h_source, sdata->vif.addr, ETH_ALEN);
 ehdr->h_proto = proto;

 skb->dev = dev;
 skb->protocol = htons(ETH_P_802_3);
 skb_reset_network_header(skb);
 skb_reset_mac_header(skb);

 local_bh_disable();
 __ieee80211_subif_start_xmit(skb, skb->dev, flags, 0);
 local_bh_enable();

 return 0;
}
