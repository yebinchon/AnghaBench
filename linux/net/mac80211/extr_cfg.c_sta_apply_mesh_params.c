
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct station_parameters {int sta_modify_mask; int plink_state; int plink_action; scalar_t__ local_pm; int peer_aid; } ;
struct sta_info {TYPE_4__* mesh; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_5__ {scalar_t__ power_mode; } ;
struct TYPE_6__ {TYPE_1__ mshcfg; } ;
struct TYPE_7__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; } ;
struct ieee80211_local {int dummy; } ;
struct TYPE_8__ {int const plink_state; int tx_rate_avg; int aid; } ;


 scalar_t__ NL80211_MESH_POWER_UNKNOWN ;
 int STATION_PARAM_APPLY_PLINK_STATE ;
 int ewma_mesh_tx_rate_avg_add (int *,int) ;
 int ewma_mesh_tx_rate_avg_init (int *) ;
 int ieee80211_mbss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_mps_set_sta_local_pm (struct sta_info*,scalar_t__) ;
 int ieee80211_mps_sta_status_update (struct sta_info*) ;
 int mesh_plink_block (struct sta_info*) ;
 int mesh_plink_dec_estab_count (struct ieee80211_sub_if_data*) ;
 int mesh_plink_inc_estab_count (struct ieee80211_sub_if_data*) ;
 int mesh_plink_open (struct sta_info*) ;

__attribute__((used)) static void sta_apply_mesh_params(struct ieee80211_local *local,
      struct sta_info *sta,
      struct station_parameters *params)
{
}
