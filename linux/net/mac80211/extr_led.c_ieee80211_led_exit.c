
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
struct ieee80211_local {scalar_t__ tpt_led_trigger; TYPE_1__ tpt_led; TYPE_1__ rx_led; TYPE_1__ tx_led; TYPE_1__ assoc_led; TYPE_1__ radio_led; } ;


 int kfree (scalar_t__) ;
 int led_trigger_unregister (TYPE_1__*) ;

void ieee80211_led_exit(struct ieee80211_local *local)
{
 if (local->radio_led.name)
  led_trigger_unregister(&local->radio_led);
 if (local->assoc_led.name)
  led_trigger_unregister(&local->assoc_led);
 if (local->tx_led.name)
  led_trigger_unregister(&local->tx_led);
 if (local->rx_led.name)
  led_trigger_unregister(&local->rx_led);

 if (local->tpt_led_trigger) {
  led_trigger_unregister(&local->tpt_led);
  kfree(local->tpt_led_trigger);
 }
}
