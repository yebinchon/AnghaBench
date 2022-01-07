
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tpt_led_trigger {char const* name; unsigned int blink_table_len; unsigned int want; int timer; struct ieee80211_local* local; struct ieee80211_tpt_blink const* blink_table; } ;
struct ieee80211_tpt_blink {int dummy; } ;
struct TYPE_4__ {char const* name; } ;
struct TYPE_3__ {int wiphy; } ;
struct ieee80211_local {struct tpt_led_trigger* tpt_led_trigger; TYPE_2__ tpt_led; TYPE_1__ hw; } ;
struct ieee80211_hw {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (struct tpt_led_trigger*) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 struct tpt_led_trigger* kzalloc (int,int ) ;
 int snprintf (char const*,int,char*,char*) ;
 int timer_setup (int *,int ,int ) ;
 int tpt_trig_timer ;
 char* wiphy_name (int ) ;

const char *
__ieee80211_create_tpt_led_trigger(struct ieee80211_hw *hw,
       unsigned int flags,
       const struct ieee80211_tpt_blink *blink_table,
       unsigned int blink_table_len)
{
 struct ieee80211_local *local = hw_to_local(hw);
 struct tpt_led_trigger *tpt_trig;

 if (WARN_ON(local->tpt_led_trigger))
  return ((void*)0);

 tpt_trig = kzalloc(sizeof(struct tpt_led_trigger), GFP_KERNEL);
 if (!tpt_trig)
  return ((void*)0);

 snprintf(tpt_trig->name, sizeof(tpt_trig->name),
   "%stpt", wiphy_name(local->hw.wiphy));

 local->tpt_led.name = tpt_trig->name;

 tpt_trig->blink_table = blink_table;
 tpt_trig->blink_table_len = blink_table_len;
 tpt_trig->want = flags;
 tpt_trig->local = local;

 timer_setup(&tpt_trig->timer, tpt_trig_timer, 0);

 local->tpt_led_trigger = tpt_trig;

 return tpt_trig->name;
}
