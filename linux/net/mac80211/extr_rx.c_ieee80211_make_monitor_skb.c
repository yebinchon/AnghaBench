
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; int pkt_type; int ip_summed; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_local {int dummy; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_802_2 ;
 int GFP_ATOMIC ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int PACKET_OTHERHOST ;
 int dev_kfree_skb (struct sk_buff*) ;
 int htons (int ) ;
 int ieee80211_add_rx_radiotap_header (struct ieee80211_local*,struct sk_buff*,struct ieee80211_rate*,int,int) ;
 int ieee80211_rx_radiotap_hdrlen (struct ieee80211_local*,struct ieee80211_rx_status*,struct sk_buff*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int,int ,int ) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int ,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *
ieee80211_make_monitor_skb(struct ieee80211_local *local,
      struct sk_buff **origskb,
      struct ieee80211_rate *rate,
      int rtap_space, bool use_origskb)
{
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(*origskb);
 int rt_hdrlen, needed_headroom;
 struct sk_buff *skb;


 rt_hdrlen = ieee80211_rx_radiotap_hdrlen(local, status, *origskb);
 needed_headroom = rt_hdrlen - rtap_space;

 if (use_origskb) {

  skb = *origskb;
  *origskb = ((void*)0);
  if (skb_headroom(skb) < needed_headroom &&
      pskb_expand_head(skb, needed_headroom, 0, GFP_ATOMIC)) {
   dev_kfree_skb(skb);
   return ((void*)0);
  }
 } else {




  skb = skb_copy_expand(*origskb, needed_headroom, 0, GFP_ATOMIC);

  if (!skb)
   return ((void*)0);
 }


 ieee80211_add_rx_radiotap_header(local, skb, rate, rt_hdrlen, 1);

 skb_reset_mac_header(skb);
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb->pkt_type = PACKET_OTHERHOST;
 skb->protocol = htons(ETH_P_802_2);

 return skb;
}
