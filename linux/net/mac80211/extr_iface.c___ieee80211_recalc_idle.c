
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_local {int scanning; int roc_list; TYPE_1__* ops; scalar_t__ monitors; int chanctx_list; int mtx; } ;
struct TYPE_2__ {int remain_on_channel; } ;


 unsigned int IEEE80211_TPT_LEDTRIG_FL_CONNECTED ;
 unsigned int IEEE80211_TPT_LEDTRIG_FL_WORK ;
 int SCAN_ONCHANNEL_SCANNING ;
 int SCAN_SW_SCANNING ;
 int __ieee80211_idle_off (struct ieee80211_local*) ;
 int __ieee80211_idle_on (struct ieee80211_local*) ;
 int ieee80211_mod_tpt_led_trig (struct ieee80211_local*,unsigned int,unsigned int) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 __ieee80211_recalc_idle(struct ieee80211_local *local,
       bool force_active)
{
 bool working, scanning, active;
 unsigned int led_trig_start = 0, led_trig_stop = 0;

 lockdep_assert_held(&local->mtx);

 active = force_active ||
   !list_empty(&local->chanctx_list) ||
   local->monitors;

 working = !local->ops->remain_on_channel &&
    !list_empty(&local->roc_list);

 scanning = test_bit(SCAN_SW_SCANNING, &local->scanning) ||
     test_bit(SCAN_ONCHANNEL_SCANNING, &local->scanning);

 if (working || scanning)
  led_trig_start |= IEEE80211_TPT_LEDTRIG_FL_WORK;
 else
  led_trig_stop |= IEEE80211_TPT_LEDTRIG_FL_WORK;

 if (active)
  led_trig_start |= IEEE80211_TPT_LEDTRIG_FL_CONNECTED;
 else
  led_trig_stop |= IEEE80211_TPT_LEDTRIG_FL_CONNECTED;

 ieee80211_mod_tpt_led_trig(local, led_trig_start, led_trig_stop);

 if (working || scanning || active)
  return __ieee80211_idle_off(local);
 return __ieee80211_idle_on(local);
}
