
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpt_led_trigger {unsigned int active; int want; } ;
struct ieee80211_local {struct tpt_led_trigger* tpt_led_trigger; } ;


 int IEEE80211_TPT_LEDTRIG_FL_RADIO ;
 int WARN_ON (unsigned int) ;
 int ieee80211_start_tpt_led_trig (struct ieee80211_local*) ;
 int ieee80211_stop_tpt_led_trig (struct ieee80211_local*) ;

void ieee80211_mod_tpt_led_trig(struct ieee80211_local *local,
    unsigned int types_on, unsigned int types_off)
{
 struct tpt_led_trigger *tpt_trig = local->tpt_led_trigger;
 bool allowed;

 WARN_ON(types_on & types_off);

 if (!tpt_trig)
  return;

 tpt_trig->active &= ~types_off;
 tpt_trig->active |= types_on;







 allowed = tpt_trig->active & IEEE80211_TPT_LEDTRIG_FL_RADIO;

 if (!allowed || !(tpt_trig->active & tpt_trig->want))
  ieee80211_stop_tpt_led_trig(local);
 else
  ieee80211_start_tpt_led_trig(local);
}
