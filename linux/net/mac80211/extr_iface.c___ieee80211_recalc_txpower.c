
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int txpower; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; int chanctx_conf; } ;
struct ieee80211_sub_if_data {int local; TYPE_2__ vif; int ap_power_level; int user_power_level; } ;
struct ieee80211_chanctx_conf {int def; } ;


 int IEEE80211_UNSET_POWER_LEVEL ;
 int ieee80211_chandef_max_power (int *) ;
 int ieee80211_hw_config (int ,int ) ;
 int min (int,int ) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool __ieee80211_recalc_txpower(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_chanctx_conf *chanctx_conf;
 int power;

 rcu_read_lock();
 chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
 if (!chanctx_conf) {
  rcu_read_unlock();
  return 0;
 }

 power = ieee80211_chandef_max_power(&chanctx_conf->def);
 rcu_read_unlock();

 if (sdata->user_power_level != IEEE80211_UNSET_POWER_LEVEL)
  power = min(power, sdata->user_power_level);

 if (sdata->ap_power_level != IEEE80211_UNSET_POWER_LEVEL)
  power = min(power, sdata->ap_power_level);

 if (power != sdata->vif.bss_conf.txpower) {
  sdata->vif.bss_conf.txpower = power;
  ieee80211_hw_config(sdata->local, 0);
  return 1;
 }

 return 0;
}
