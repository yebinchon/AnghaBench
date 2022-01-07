
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_7__ {int driver_smps_mode; int request_smps_work; } ;
struct TYPE_5__ {int driver_smps_mode; int request_smps_work; } ;
struct TYPE_8__ {TYPE_3__ ap; TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__* local; } ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;
struct TYPE_6__ {int hw; } ;


 int IEEE80211_SMPS_AUTOMATIC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_queue_work (int *,int *) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_request_smps(struct ieee80211_vif *vif,
       enum ieee80211_smps_mode smps_mode)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);

 if (WARN_ON_ONCE(vif->type != NL80211_IFTYPE_STATION &&
    vif->type != NL80211_IFTYPE_AP))
  return;

 if (vif->type == NL80211_IFTYPE_STATION) {
  if (sdata->u.mgd.driver_smps_mode == smps_mode)
   return;
  sdata->u.mgd.driver_smps_mode = smps_mode;
  ieee80211_queue_work(&sdata->local->hw,
         &sdata->u.mgd.request_smps_work);
 } else {

  if (WARN_ON_ONCE(smps_mode == IEEE80211_SMPS_AUTOMATIC))
   return;
  if (sdata->u.ap.driver_smps_mode == smps_mode)
   return;
  sdata->u.ap.driver_smps_mode = smps_mode;
  ieee80211_queue_work(&sdata->local->hw,
         &sdata->u.ap.request_smps_work);
 }
}
