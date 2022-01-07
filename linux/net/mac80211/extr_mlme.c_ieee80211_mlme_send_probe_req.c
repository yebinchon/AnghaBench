
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 int IEEE80211_PROBE_FLAG_DIRECTED ;
 struct sk_buff* ieee80211_build_probe_req (struct ieee80211_sub_if_data*,int const*,int const*,int ,struct ieee80211_channel*,int const*,size_t,int *,int ,int ) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;

__attribute__((used)) static void ieee80211_mlme_send_probe_req(struct ieee80211_sub_if_data *sdata,
       const u8 *src, const u8 *dst,
       const u8 *ssid, size_t ssid_len,
       struct ieee80211_channel *channel)
{
 struct sk_buff *skb;

 skb = ieee80211_build_probe_req(sdata, src, dst, (u32)-1, channel,
     ssid, ssid_len, ((void*)0), 0,
     IEEE80211_PROBE_FLAG_DIRECTED);
 if (skb)
  ieee80211_tx_skb(sdata, skb);
}
