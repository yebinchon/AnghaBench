
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_8__ {int beacon; } ;
struct TYPE_7__ {int presp; } ;
struct TYPE_6__ {int beacon; } ;
struct TYPE_9__ {TYPE_3__ mesh; TYPE_2__ ibss; TYPE_1__ ap; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_5__ vif; } ;
struct beacon_data {scalar_t__ csa_current_counter; } ;


 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ ieee80211_vif_is_mesh (TYPE_5__*) ;
 struct beacon_data* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_csa_set_counter(struct ieee80211_vif *vif, u8 counter)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct beacon_data *beacon = ((void*)0);

 rcu_read_lock();

 if (sdata->vif.type == NL80211_IFTYPE_AP)
  beacon = rcu_dereference(sdata->u.ap.beacon);
 else if (sdata->vif.type == NL80211_IFTYPE_ADHOC)
  beacon = rcu_dereference(sdata->u.ibss.presp);
 else if (ieee80211_vif_is_mesh(&sdata->vif))
  beacon = rcu_dereference(sdata->u.mesh.beacon);

 if (!beacon)
  goto unlock;

 if (counter < beacon->csa_current_counter)
  beacon->csa_current_counter = counter;

unlock:
 rcu_read_unlock();
}
