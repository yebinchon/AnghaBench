
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_local {scalar_t__ started; } ;


 int EOPNOTSUPP ;
 int drv_set_antenna (struct ieee80211_local*,int ,int ) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int ieee80211_set_antenna(struct wiphy *wiphy, u32 tx_ant, u32 rx_ant)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);

 if (local->started)
  return -EOPNOTSUPP;

 return drv_set_antenna(local, tx_ant, rx_ant);
}
