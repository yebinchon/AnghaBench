
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_local {struct ieee80211_hw hw; } ;


 int BUG_ON (int) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

struct ieee80211_hw *wiphy_to_ieee80211_hw(struct wiphy *wiphy)
{
 struct ieee80211_local *local;
 BUG_ON(!wiphy);

 local = wiphy_priv(wiphy);
 return &local->hw;
}
