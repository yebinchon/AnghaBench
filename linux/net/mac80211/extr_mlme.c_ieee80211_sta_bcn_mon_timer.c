
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ieee80211_if_managed {int connection_loss; int beacon_connection_loss_work; int csa_waiting_bcn; } ;
struct TYPE_8__ {struct ieee80211_if_managed mgd; } ;
struct TYPE_9__ {scalar_t__ csa_active; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__* local; TYPE_4__ vif; } ;
struct TYPE_7__ {int bcn_mon_timer; } ;
struct TYPE_10__ {TYPE_2__ mgd; } ;
struct TYPE_6__ {int hw; } ;


 struct ieee80211_sub_if_data* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_queue_work (int *,int *) ;
 struct ieee80211_sub_if_data* sdata ;
 TYPE_5__ u ;

__attribute__((used)) static void ieee80211_sta_bcn_mon_timer(struct timer_list *t)
{
 struct ieee80211_sub_if_data *sdata =
  from_timer(sdata, t, u.mgd.bcn_mon_timer);
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

 if (sdata->vif.csa_active && !ifmgd->csa_waiting_bcn)
  return;

 sdata->u.mgd.connection_loss = 0;
 ieee80211_queue_work(&sdata->local->hw,
        &sdata->u.mgd.beacon_connection_loss_work);
}
