
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_7__ {scalar_t__ csa_active; } ;
struct ieee80211_if_managed {int monitor_work; int csa_waiting_bcn; } ;
struct TYPE_6__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; struct ieee80211_local* local; TYPE_2__ u; } ;
struct ieee80211_local {int hw; } ;
struct TYPE_5__ {int conn_mon_timer; } ;
struct TYPE_8__ {TYPE_1__ mgd; } ;


 struct ieee80211_sub_if_data* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_queue_work (int *,int *) ;
 struct ieee80211_sub_if_data* sdata ;
 TYPE_4__ u ;

__attribute__((used)) static void ieee80211_sta_conn_mon_timer(struct timer_list *t)
{
 struct ieee80211_sub_if_data *sdata =
  from_timer(sdata, t, u.mgd.conn_mon_timer);
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_local *local = sdata->local;

 if (sdata->vif.csa_active && !ifmgd->csa_waiting_bcn)
  return;

 ieee80211_queue_work(&local->hw, &ifmgd->monitor_work);
}
