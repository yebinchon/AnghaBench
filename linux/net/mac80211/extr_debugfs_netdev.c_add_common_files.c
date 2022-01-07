
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; TYPE_2__* local; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ wake_tx_queue; } ;


 int DEBUGFS_ADD (int ) ;
 scalar_t__ NL80211_IFTYPE_NAN ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int aqm ;
 int hw_queues ;
 int rc_rateidx_mask_2ghz ;
 int rc_rateidx_mask_5ghz ;
 int rc_rateidx_mcs_mask_2ghz ;
 int rc_rateidx_mcs_mask_5ghz ;
 int rc_rateidx_vht_mcs_mask_2ghz ;
 int rc_rateidx_vht_mcs_mask_5ghz ;

__attribute__((used)) static void add_common_files(struct ieee80211_sub_if_data *sdata)
{
 DEBUGFS_ADD(rc_rateidx_mask_2ghz);
 DEBUGFS_ADD(rc_rateidx_mask_5ghz);
 DEBUGFS_ADD(rc_rateidx_mcs_mask_2ghz);
 DEBUGFS_ADD(rc_rateidx_mcs_mask_5ghz);
 DEBUGFS_ADD(rc_rateidx_vht_mcs_mask_2ghz);
 DEBUGFS_ADD(rc_rateidx_vht_mcs_mask_5ghz);
 DEBUGFS_ADD(hw_queues);

 if (sdata->local->ops->wake_tx_queue &&
     sdata->vif.type != NL80211_IFTYPE_P2P_DEVICE &&
     sdata->vif.type != NL80211_IFTYPE_NAN)
  DEBUGFS_ADD(aqm);
}
