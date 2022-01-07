
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int dummy; } ;
struct sk_buff {int priority; int protocol; int * data; int len; } ;
struct net_device {int name; } ;
struct TYPE_9__ {int sta; } ;
struct TYPE_10__ {TYPE_4__ vlan; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int flags; TYPE_5__ u; TYPE_3__ vif; struct net_device* dev; } ;
struct ieee80211_rx_data {size_t seqno_idx; TYPE_2__* sta; struct sk_buff* skb; struct ieee80211_sub_if_data* sdata; } ;
struct ethhdr {int h_dest; int h_source; } ;
struct TYPE_6__ {int syncp; int * msdu; } ;
struct TYPE_7__ {TYPE_1__ rx_stats; } ;


 int ETH_P_802_3 ;
 int GFP_ATOMIC ;
 int IEEE80211_SDATA_DONT_BRIDGE_PACKETS ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ WARN_ON (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ether_addr_equal (int ,int ) ;
 int htons (int ) ;
 int ieee80211_deliver_skb_to_local_stack (struct sk_buff*,struct ieee80211_rx_data*) ;
 int ieee80211_rx_stats (struct net_device*,int ) ;
 scalar_t__ ieee80211_vif_get_num_mcast_if (struct ieee80211_sub_if_data*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int memmove (int *,int *,size_t) ;
 int net_info_ratelimited (char*,int ) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 size_t skb_headlen (struct sk_buff*) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_tail_pointer (struct sk_buff*,size_t) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void
ieee80211_deliver_skb(struct ieee80211_rx_data *rx)
{
 struct ieee80211_sub_if_data *sdata = rx->sdata;
 struct net_device *dev = sdata->dev;
 struct sk_buff *skb, *xmit_skb;
 struct ethhdr *ehdr = (struct ethhdr *) rx->skb->data;
 struct sta_info *dsta;

 skb = rx->skb;
 xmit_skb = ((void*)0);

 ieee80211_rx_stats(dev, skb->len);

 if (rx->sta) {





  u64_stats_update_begin(&rx->sta->rx_stats.syncp);
  rx->sta->rx_stats.msdu[rx->seqno_idx]++;
  u64_stats_update_end(&rx->sta->rx_stats.syncp);
 }

 if ((sdata->vif.type == NL80211_IFTYPE_AP ||
      sdata->vif.type == NL80211_IFTYPE_AP_VLAN) &&
     !(sdata->flags & IEEE80211_SDATA_DONT_BRIDGE_PACKETS) &&
     (sdata->vif.type != NL80211_IFTYPE_AP_VLAN || !sdata->u.vlan.sta)) {
  if (is_multicast_ether_addr(ehdr->h_dest) &&
      ieee80211_vif_get_num_mcast_if(sdata) != 0) {




   xmit_skb = skb_copy(skb, GFP_ATOMIC);
   if (!xmit_skb)
    net_info_ratelimited("%s: failed to clone multicast frame\n",
          dev->name);
  } else if (!is_multicast_ether_addr(ehdr->h_dest) &&
      !ether_addr_equal(ehdr->h_dest, ehdr->h_source)) {
   dsta = sta_info_get(sdata, ehdr->h_dest);
   if (dsta) {






    xmit_skb = skb;
    skb = ((void*)0);
   }
  }
 }


 if (skb) {






  int align;

  align = (unsigned long)(skb->data + sizeof(struct ethhdr)) & 3;
  if (align) {
   if (WARN_ON(skb_headroom(skb) < 3)) {
    dev_kfree_skb(skb);
    skb = ((void*)0);
   } else {
    u8 *data = skb->data;
    size_t len = skb_headlen(skb);
    skb->data -= align;
    memmove(skb->data, data, len);
    skb_set_tail_pointer(skb, len);
   }
  }
 }


 if (skb) {
  skb->protocol = eth_type_trans(skb, dev);
  ieee80211_deliver_skb_to_local_stack(skb, rx);
 }

 if (xmit_skb) {





  xmit_skb->priority += 256;
  xmit_skb->protocol = htons(ETH_P_802_3);
  skb_reset_network_header(xmit_skb);
  skb_reset_mac_header(xmit_skb);
  dev_queue_xmit(xmit_skb);
 }
}
