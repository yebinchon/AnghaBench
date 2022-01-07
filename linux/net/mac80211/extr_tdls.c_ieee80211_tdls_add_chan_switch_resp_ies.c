
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int ieee80211_tdls_add_link_ie (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int) ;
 int skb_put_data (struct sk_buff*,int const*,size_t) ;

__attribute__((used)) static void
ieee80211_tdls_add_chan_switch_resp_ies(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb, const u8 *peer,
     u16 status_code, bool initiator,
     const u8 *extra_ies,
     size_t extra_ies_len)
{
 if (status_code == 0)
  ieee80211_tdls_add_link_ie(sdata, skb, peer, initiator);

 if (extra_ies_len)
  skb_put_data(skb, extra_ies, extra_ies_len);
}
