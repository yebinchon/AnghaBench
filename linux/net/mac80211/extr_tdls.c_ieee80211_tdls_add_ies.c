
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
 int ieee80211_tdls_add_chan_switch_req_ies (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int,int const*,size_t,int,struct cfg80211_chan_def*) ;
 int ieee80211_tdls_add_chan_switch_resp_ies (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int ,int,int const*,size_t) ;
 int ieee80211_tdls_add_link_ie (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int) ;
 int ieee80211_tdls_add_setup_cfm_ies (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int,int const*,size_t) ;
 int ieee80211_tdls_add_setup_start_ies (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int,int,int const*,size_t) ;
 int skb_put_data (struct sk_buff*,int const*,size_t) ;

__attribute__((used)) static void ieee80211_tdls_add_ies(struct ieee80211_sub_if_data *sdata,
       struct sk_buff *skb, const u8 *peer,
       u8 action_code, u16 status_code,
       bool initiator, const u8 *extra_ies,
       size_t extra_ies_len, u8 oper_class,
       struct cfg80211_chan_def *chandef)
{
 switch (action_code) {
 case 130:
 case 129:
 case 135:
  if (status_code == 0)
   ieee80211_tdls_add_setup_start_ies(sdata, skb, peer,
          action_code,
          initiator,
          extra_ies,
          extra_ies_len);
  break;
 case 131:
  if (status_code == 0)
   ieee80211_tdls_add_setup_cfm_ies(sdata, skb, peer,
        initiator, extra_ies,
        extra_ies_len);
  break;
 case 128:
 case 132:
  if (extra_ies_len)
   skb_put_data(skb, extra_ies, extra_ies_len);
  if (status_code == 0 || action_code == 128)
   ieee80211_tdls_add_link_ie(sdata, skb, peer, initiator);
  break;
 case 134:
  ieee80211_tdls_add_chan_switch_req_ies(sdata, skb, peer,
             initiator, extra_ies,
             extra_ies_len,
             oper_class, chandef);
  break;
 case 133:
  ieee80211_tdls_add_chan_switch_resp_ies(sdata, skb, peer,
       status_code,
       initiator, extra_ies,
       extra_ies_len);
  break;
 }

}
