
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int WLAN_EID_SUPPORTED_CHANNELS ;
 int ieee80211_tdls_add_subband (struct ieee80211_sub_if_data*,struct sk_buff*,int,int,int) ;
 int* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
ieee80211_tdls_add_supp_channels(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb)
{




 u8 subband_cnt;
 u8 *pos = skb_put(skb, 2);

 *pos++ = WLAN_EID_SUPPORTED_CHANNELS;







 subband_cnt = ieee80211_tdls_add_subband(sdata, skb, 2412, 2472, 5);


 subband_cnt += ieee80211_tdls_add_subband(sdata, skb, 5000, 5825, 20);


 *pos = 2 * subband_cnt;
}
