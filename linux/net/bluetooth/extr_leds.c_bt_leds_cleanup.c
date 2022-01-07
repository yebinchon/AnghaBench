
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bt_power_led_trigger ;
 int led_trigger_unregister_simple (int ) ;

void bt_leds_cleanup(void)
{
 led_trigger_unregister_simple(bt_power_led_trigger);
}
