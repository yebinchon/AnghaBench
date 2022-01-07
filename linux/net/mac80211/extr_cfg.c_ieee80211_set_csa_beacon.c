
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_14__ {TYPE_4__* chan; int width; } ;
struct TYPE_15__ {TYPE_5__ chandef; int ibss_joined; } ;
struct TYPE_16__ {int type; TYPE_6__ bss_conf; } ;
struct ieee80211_if_mesh {int pre_value; int csa_role; } ;
struct TYPE_18__ {TYPE_8__* chan; int width; } ;
struct TYPE_11__ {TYPE_9__ chandef; } ;
struct TYPE_10__ {int next_beacon; } ;
struct TYPE_12__ {struct ieee80211_if_mesh mesh; TYPE_2__ ibss; TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_7__ vif; TYPE_3__ u; } ;
struct ieee80211_csa_settings {int count; int n_counter_offsets_presp; int n_counter_offsets_beacon; int counter_offsets_presp; int counter_offsets_beacon; } ;
struct cfg80211_csa_settings {int count; TYPE_9__ chandef; int beacon_csa; int n_counter_offsets_presp; int n_counter_offsets_beacon; int counter_offsets_presp; int counter_offsets_beacon; int beacon_after; } ;
struct TYPE_17__ {int band; } ;
struct TYPE_13__ {int band; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IEEE80211_MAX_CSA_COUNTERS_NUM ;
 int IEEE80211_MESH_CSA_ROLE_INIT ;
 int IEEE80211_MESH_CSA_ROLE_NONE ;
 int cfg80211_beacon_dup (int *) ;
 int cfg80211_get_chandef_type (TYPE_9__*) ;
 int ieee80211_assign_beacon (struct ieee80211_sub_if_data*,int *,struct ieee80211_csa_settings*) ;
 int ieee80211_ibss_csa_beacon (struct ieee80211_sub_if_data*,struct cfg80211_csa_settings*) ;
 int ieee80211_mesh_csa_beacon (struct ieee80211_sub_if_data*,struct cfg80211_csa_settings*) ;
 int ieee80211_send_action_csa (struct ieee80211_sub_if_data*,struct cfg80211_csa_settings*) ;
 int kfree (int ) ;

__attribute__((used)) static int ieee80211_set_csa_beacon(struct ieee80211_sub_if_data *sdata,
        struct cfg80211_csa_settings *params,
        u32 *changed)
{
 struct ieee80211_csa_settings csa = {};
 int err;

 switch (sdata->vif.type) {
 case 129:
  sdata->u.ap.next_beacon =
   cfg80211_beacon_dup(&params->beacon_after);
  if (!sdata->u.ap.next_beacon)
   return -ENOMEM;
  if (params->count <= 1)
   break;

  if ((params->n_counter_offsets_beacon >
       IEEE80211_MAX_CSA_COUNTERS_NUM) ||
      (params->n_counter_offsets_presp >
       IEEE80211_MAX_CSA_COUNTERS_NUM))
   return -EINVAL;

  csa.counter_offsets_beacon = params->counter_offsets_beacon;
  csa.counter_offsets_presp = params->counter_offsets_presp;
  csa.n_counter_offsets_beacon = params->n_counter_offsets_beacon;
  csa.n_counter_offsets_presp = params->n_counter_offsets_presp;
  csa.count = params->count;

  err = ieee80211_assign_beacon(sdata, &params->beacon_csa, &csa);
  if (err < 0) {
   kfree(sdata->u.ap.next_beacon);
   return err;
  }
  *changed |= err;

  break;
 case 130:
  if (!sdata->vif.bss_conf.ibss_joined)
   return -EINVAL;

  if (params->chandef.width != sdata->u.ibss.chandef.width)
   return -EINVAL;

  switch (params->chandef.width) {
  case 132:
   if (cfg80211_get_chandef_type(&params->chandef) !=
       cfg80211_get_chandef_type(&sdata->u.ibss.chandef))
    return -EINVAL;
  case 131:
  case 135:
  case 133:
  case 134:
   break;
  default:
   return -EINVAL;
  }


  if (sdata->u.ibss.chandef.chan->band !=
      params->chandef.chan->band)
   return -EINVAL;


  if (params->count > 1) {
   err = ieee80211_ibss_csa_beacon(sdata, params);
   if (err < 0)
    return err;
   *changed |= err;
  }

  ieee80211_send_action_csa(sdata, params);

  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
