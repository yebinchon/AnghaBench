
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int features; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tdls_data {int action_code; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 int ASSERT_RTNL () ;
 int NL80211_FEATURE_TDLS_CHANNEL_SWITCH ;
 int WARN_ON_ONCE (int) ;


 int ieee80211_process_tdls_channel_switch_req (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int ieee80211_process_tdls_channel_switch_resp (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;

__attribute__((used)) static void
ieee80211_process_tdls_channel_switch(struct ieee80211_sub_if_data *sdata,
          struct sk_buff *skb)
{
 struct ieee80211_tdls_data *tf = (void *)skb->data;
 struct wiphy *wiphy = sdata->local->hw.wiphy;

 ASSERT_RTNL();


 if (!(wiphy->features & NL80211_FEATURE_TDLS_CHANNEL_SWITCH))
  return;


 if (skb_linearize(skb))
  return;




 switch (tf->action_code) {
 case 129:
  ieee80211_process_tdls_channel_switch_req(sdata, skb);
  break;
 case 128:
  ieee80211_process_tdls_channel_switch_resp(sdata, skb);
  break;
 default:
  WARN_ON_ONCE(1);
  return;
 }
}
