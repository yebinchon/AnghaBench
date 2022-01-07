
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int workqueue; int reconfig_filter; } ;


 int IEEE80211_TPT_LEDTRIG_FL_RADIO ;
 int cancel_work_sync (int *) ;
 int drv_stop (struct ieee80211_local*) ;
 int flush_workqueue (int ) ;
 int ieee80211_led_radio (struct ieee80211_local*,int) ;
 int ieee80211_mod_tpt_led_trig (struct ieee80211_local*,int ,int ) ;

void ieee80211_stop_device(struct ieee80211_local *local)
{
 ieee80211_led_radio(local, 0);
 ieee80211_mod_tpt_led_trig(local, 0, IEEE80211_TPT_LEDTRIG_FL_RADIO);

 cancel_work_sync(&local->reconfig_filter);

 flush_workqueue(local->workqueue);
 drv_stop(local);
}
