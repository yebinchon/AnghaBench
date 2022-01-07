
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_local {scalar_t__ open_count; int use_chanctx; } ;


 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int drv_config (struct ieee80211_local*,int) ;
 int ieee80211_hw_conf_chan (struct ieee80211_local*) ;
 int might_sleep () ;

int ieee80211_hw_config(struct ieee80211_local *local, u32 changed)
{
 int ret = 0;

 might_sleep();

 if (!local->use_chanctx)
  changed |= ieee80211_hw_conf_chan(local);
 else
  changed &= ~(IEEE80211_CONF_CHANGE_CHANNEL |
        IEEE80211_CONF_CHANGE_POWER);

 if (changed && local->open_count) {
  ret = drv_config(local, changed);
 }

 return ret;
}
