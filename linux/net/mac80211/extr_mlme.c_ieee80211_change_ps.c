
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_conf {int flags; } ;
struct TYPE_2__ {struct ieee80211_conf conf; } ;
struct ieee80211_local {int dynamic_ps_enable_work; int dynamic_ps_timer; scalar_t__ ps_sdata; TYPE_1__ hw; } ;


 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_PS ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int ieee80211_enable_ps (struct ieee80211_local*,scalar_t__) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;

__attribute__((used)) static void ieee80211_change_ps(struct ieee80211_local *local)
{
 struct ieee80211_conf *conf = &local->hw.conf;

 if (local->ps_sdata) {
  ieee80211_enable_ps(local, local->ps_sdata);
 } else if (conf->flags & IEEE80211_CONF_PS) {
  conf->flags &= ~IEEE80211_CONF_PS;
  ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_PS);
  del_timer_sync(&local->dynamic_ps_timer);
  cancel_work_sync(&local->dynamic_ps_enable_work);
 }
}
