
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int deactivate; int activate; int * name; } ;
struct ieee80211_local {int * tpt_led_trigger; TYPE_1__ tpt_led; int tpt_led_active; TYPE_1__ radio_led; int radio_led_active; TYPE_1__ assoc_led; int assoc_led_active; TYPE_1__ tx_led; int tx_led_active; TYPE_1__ rx_led; int rx_led_active; } ;


 int atomic_set (int *,int ) ;
 int ieee80211_assoc_led_activate ;
 int ieee80211_assoc_led_deactivate ;
 int ieee80211_radio_led_activate ;
 int ieee80211_radio_led_deactivate ;
 int ieee80211_rx_led_activate ;
 int ieee80211_rx_led_deactivate ;
 int ieee80211_tpt_led_activate ;
 int ieee80211_tpt_led_deactivate ;
 int ieee80211_tx_led_activate ;
 int ieee80211_tx_led_deactivate ;
 int kfree (int *) ;
 scalar_t__ led_trigger_register (TYPE_1__*) ;

void ieee80211_led_init(struct ieee80211_local *local)
{
 atomic_set(&local->rx_led_active, 0);
 local->rx_led.activate = ieee80211_rx_led_activate;
 local->rx_led.deactivate = ieee80211_rx_led_deactivate;
 if (local->rx_led.name && led_trigger_register(&local->rx_led)) {
  kfree(local->rx_led.name);
  local->rx_led.name = ((void*)0);
 }

 atomic_set(&local->tx_led_active, 0);
 local->tx_led.activate = ieee80211_tx_led_activate;
 local->tx_led.deactivate = ieee80211_tx_led_deactivate;
 if (local->tx_led.name && led_trigger_register(&local->tx_led)) {
  kfree(local->tx_led.name);
  local->tx_led.name = ((void*)0);
 }

 atomic_set(&local->assoc_led_active, 0);
 local->assoc_led.activate = ieee80211_assoc_led_activate;
 local->assoc_led.deactivate = ieee80211_assoc_led_deactivate;
 if (local->assoc_led.name && led_trigger_register(&local->assoc_led)) {
  kfree(local->assoc_led.name);
  local->assoc_led.name = ((void*)0);
 }

 atomic_set(&local->radio_led_active, 0);
 local->radio_led.activate = ieee80211_radio_led_activate;
 local->radio_led.deactivate = ieee80211_radio_led_deactivate;
 if (local->radio_led.name && led_trigger_register(&local->radio_led)) {
  kfree(local->radio_led.name);
  local->radio_led.name = ((void*)0);
 }

 atomic_set(&local->tpt_led_active, 0);
 if (local->tpt_led_trigger) {
  local->tpt_led.activate = ieee80211_tpt_led_activate;
  local->tpt_led.deactivate = ieee80211_tpt_led_deactivate;
  if (led_trigger_register(&local->tpt_led)) {
   kfree(local->tpt_led_trigger);
   local->tpt_led_trigger = ((void*)0);
  }
 }
}
