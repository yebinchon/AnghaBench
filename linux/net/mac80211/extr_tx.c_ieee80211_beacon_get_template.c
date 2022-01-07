
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_mutable_offsets {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct sk_buff* __ieee80211_beacon_get (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_mutable_offsets*,int) ;

struct sk_buff *
ieee80211_beacon_get_template(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_mutable_offsets *offs)
{
 return __ieee80211_beacon_get(hw, vif, offs, 1);
}
