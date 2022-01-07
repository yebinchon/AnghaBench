
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_led_info_internal {int netfilter_led_trigger; } ;
struct timer_list {int dummy; } ;


 int LED_OFF ;
 struct xt_led_info_internal* from_timer (int ,struct timer_list*,int ) ;
 int led_trigger_event (int *,int ) ;
 struct xt_led_info_internal* ledinternal ;
 int timer ;

__attribute__((used)) static void led_timeout_callback(struct timer_list *t)
{
 struct xt_led_info_internal *ledinternal = from_timer(ledinternal, t,
             timer);

 led_trigger_event(&ledinternal->netfilter_led_trigger, LED_OFF);
}
