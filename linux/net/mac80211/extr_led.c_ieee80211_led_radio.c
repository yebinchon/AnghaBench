
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int radio_led; int radio_led_active; } ;


 int LED_FULL ;
 int LED_OFF ;
 int atomic_read (int *) ;
 int led_trigger_event (int *,int ) ;

void ieee80211_led_radio(struct ieee80211_local *local, bool enabled)
{
 if (!atomic_read(&local->radio_led_active))
  return;
 if (enabled)
  led_trigger_event(&local->radio_led, LED_FULL);
 else
  led_trigger_event(&local->radio_led, LED_OFF);
}
