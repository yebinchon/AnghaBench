
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ieee80211_local {int dummy; } ;


 scalar_t__ __ieee80211_recalc_idle (struct ieee80211_local*,int) ;
 int ieee80211_hw_config (struct ieee80211_local*,scalar_t__) ;

void ieee80211_recalc_idle(struct ieee80211_local *local)
{
 u32 change = __ieee80211_recalc_idle(local, 0);
 if (change)
  ieee80211_hw_config(local, change);
}
