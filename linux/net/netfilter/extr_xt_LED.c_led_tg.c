
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_led_info_internal {int netfilter_led_trigger; int timer; } ;
struct xt_led_info {scalar_t__ delay; scalar_t__ always_blink; struct xt_led_info_internal* internal_data; } ;
struct xt_action_param {struct xt_led_info* targinfo; } ;
struct sk_buff {int dummy; } ;


 int LED_FULL ;
 int LED_OFF ;
 unsigned int XT_CONTINUE ;
 unsigned long XT_LED_BLINK_DELAY ;
 scalar_t__ jiffies ;
 int led_trigger_blink_oneshot (int *,unsigned long*,unsigned long*,int) ;
 int led_trigger_event (int *,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static unsigned int
led_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_led_info *ledinfo = par->targinfo;
 struct xt_led_info_internal *ledinternal = ledinfo->internal_data;
 unsigned long led_delay = XT_LED_BLINK_DELAY;





 if ((ledinfo->delay > 0) && ledinfo->always_blink &&
     timer_pending(&ledinternal->timer))
  led_trigger_blink_oneshot(&ledinternal->netfilter_led_trigger,
       &led_delay, &led_delay, 1);
 else
  led_trigger_event(&ledinternal->netfilter_led_trigger, LED_FULL);


 if (ledinfo->delay > 0) {
  mod_timer(&ledinternal->timer,
     jiffies + msecs_to_jiffies(ledinfo->delay));


 } else if (ledinfo->delay == 0) {
  led_trigger_event(&ledinternal->netfilter_led_trigger, LED_OFF);
 }



 return XT_CONTINUE;
}
