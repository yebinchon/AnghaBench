
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bt_power_led_trigger ;
 int led_trigger_register_simple (char*,int *) ;

void bt_leds_init(void)
{
 led_trigger_register_simple("bluetooth-power", &bt_power_led_trigger);
}
