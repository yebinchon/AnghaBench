
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_conf {scalar_t__ dynamic_ps_timeout; int flags; } ;
struct TYPE_2__ {struct ieee80211_conf conf; } ;
struct ieee80211_local {TYPE_1__ hw; int dynamic_ps_timer; scalar_t__ scanning; } ;


 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_PS ;
 int PS_NULLFUNC_STACK ;
 int REPORTS_TX_ACK_STATUS ;
 int SUPPORTS_DYNAMIC_PS ;
 scalar_t__ ieee80211_hw_check (TYPE_1__*,int ) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_send_nullfunc (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void ieee80211_enable_ps(struct ieee80211_local *local,
    struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_conf *conf = &local->hw.conf;





 if (local->scanning)
  return;

 if (conf->dynamic_ps_timeout > 0 &&
     !ieee80211_hw_check(&local->hw, SUPPORTS_DYNAMIC_PS)) {
  mod_timer(&local->dynamic_ps_timer, jiffies +
     msecs_to_jiffies(conf->dynamic_ps_timeout));
 } else {
  if (ieee80211_hw_check(&local->hw, PS_NULLFUNC_STACK))
   ieee80211_send_nullfunc(local, sdata, 1);

  if (ieee80211_hw_check(&local->hw, PS_NULLFUNC_STACK) &&
      ieee80211_hw_check(&local->hw, REPORTS_TX_ACK_STATUS))
   return;

  conf->flags |= IEEE80211_CONF_PS;
  ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_PS);
 }
}
