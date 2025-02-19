
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; int cb; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {scalar_t__ control_port_protocol; scalar_t__ control_port_over_nl80211; struct net_device* dev; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {scalar_t__ napi; struct ieee80211_sub_if_data* sdata; } ;


 int ETH_P_PREAUTH ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_FLAG_DECRYPTED ;
 int cfg80211_rx_control_port (struct net_device*,struct sk_buff*,int) ;
 scalar_t__ cpu_to_be16 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int napi_gro_receive (scalar_t__,struct sk_buff*) ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ieee80211_deliver_skb_to_local_stack(struct sk_buff *skb,
       struct ieee80211_rx_data *rx)
{
 struct ieee80211_sub_if_data *sdata = rx->sdata;
 struct net_device *dev = sdata->dev;

 if (unlikely((skb->protocol == sdata->control_port_protocol ||
        skb->protocol == cpu_to_be16(ETH_P_PREAUTH)) &&
       sdata->control_port_over_nl80211)) {
  struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
  bool noencrypt = !(status->flag & RX_FLAG_DECRYPTED);

  cfg80211_rx_control_port(dev, skb, noencrypt);
  dev_kfree_skb(skb);
 } else {
  memset(skb->cb, 0, sizeof(skb->cb));


  if (rx->napi)
   napi_gro_receive(rx->napi, skb);
  else
   netif_receive_skb(skb);
 }
}
