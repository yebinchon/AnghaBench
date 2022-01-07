
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {struct xt_led_info* targinfo; } ;
struct xt_led_info_internal {struct xt_led_info_internal* trigger_id; int netfilter_led_trigger; int timer; int list; scalar_t__ refcnt; } ;
struct xt_led_info {struct xt_led_info_internal* internal_data; } ;


 int del_timer_sync (int *) ;
 int kfree (struct xt_led_info_internal*) ;
 int led_trigger_unregister (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xt_led_mutex ;

__attribute__((used)) static void led_tg_destroy(const struct xt_tgdtor_param *par)
{
 const struct xt_led_info *ledinfo = par->targinfo;
 struct xt_led_info_internal *ledinternal = ledinfo->internal_data;

 mutex_lock(&xt_led_mutex);

 if (--ledinternal->refcnt) {
  mutex_unlock(&xt_led_mutex);
  return;
 }

 list_del(&ledinternal->list);

 del_timer_sync(&ledinternal->timer);

 led_trigger_unregister(&ledinternal->netfilter_led_trigger);

 mutex_unlock(&xt_led_mutex);

 kfree(ledinternal->trigger_id);
 kfree(ledinternal);
}
