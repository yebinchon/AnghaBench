
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_if_managed {int tx_tspec_wk; struct ieee80211_sta_tx_tspec* tx_tspec; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int wmm_acm; int * tx_conf; TYPE_1__ u; struct ieee80211_local* local; } ;
struct ieee80211_sta_tx_tspec {int action; unsigned long time_slice_start; int downgraded; scalar_t__ consumed_tx_time; scalar_t__ admitted_time; } ;
struct TYPE_4__ {int queues; } ;
struct ieee80211_local {TYPE_2__ hw; } ;


 int BIT (int) ;
 scalar_t__ HZ ;
 int IEEE80211_AC_BK ;
 int IEEE80211_NUM_ACS ;



 int drv_conf_tx (struct ieee80211_local*,struct ieee80211_sub_if_data*,int,int *) ;
 unsigned long jiffies ;
 int schedule_delayed_work (int *,int ) ;
 int sdata_err (struct ieee80211_sub_if_data*,char*,int) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static bool
__ieee80211_sta_handle_tspec_ac_params(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 bool ret = 0;
 int ac;

 if (local->hw.queues < IEEE80211_NUM_ACS)
  return 0;

 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  struct ieee80211_sta_tx_tspec *tx_tspec = &ifmgd->tx_tspec[ac];
  int non_acm_ac;
  unsigned long now = jiffies;

  if (tx_tspec->action == 129 &&
      tx_tspec->admitted_time &&
      time_after(now, tx_tspec->time_slice_start + HZ)) {
   tx_tspec->consumed_tx_time = 0;
   tx_tspec->time_slice_start = now;

   if (tx_tspec->downgraded)
    tx_tspec->action =
     128;
  }

  switch (tx_tspec->action) {
  case 128:

   if (drv_conf_tx(local, sdata, ac, &sdata->tx_conf[ac]))
    sdata_err(sdata,
       "failed to set TX queue parameters for queue %d\n",
       ac);
   tx_tspec->action = 129;
   tx_tspec->downgraded = 0;
   ret = 1;
   break;
  case 130:
   if (time_after(now, tx_tspec->time_slice_start + HZ)) {
    tx_tspec->action = 129;
    ret = 1;
    break;
   }

   for (non_acm_ac = ac + 1;
        non_acm_ac < IEEE80211_NUM_ACS;
        non_acm_ac++)
    if (!(sdata->wmm_acm & BIT(7 - 2 * non_acm_ac)))
     break;







   if (non_acm_ac >= IEEE80211_NUM_ACS)
    non_acm_ac = IEEE80211_AC_BK;
   if (drv_conf_tx(local, sdata, ac,
     &sdata->tx_conf[non_acm_ac]))
    sdata_err(sdata,
       "failed to set TX queue parameters for queue %d\n",
       ac);
   tx_tspec->action = 129;
   ret = 1;
   schedule_delayed_work(&ifmgd->tx_tspec_wk,
    tx_tspec->time_slice_start + HZ - now + 1);
   break;
  case 129:

   break;
  }
 }

 return ret;
}
