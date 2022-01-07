
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_12__ {int addr; } ;
struct sta_info {int debugfs_dir; TYPE_6__ sta; int driver_buffered_tids; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct TYPE_7__ {struct dentry* subdir_stations; } ;
struct ieee80211_sub_if_data {TYPE_1__ debugfs; } ;
struct TYPE_9__ {int wiphy; } ;
struct ieee80211_local {TYPE_3__ hw; TYPE_2__* ops; } ;
struct dentry {int dummy; } ;
typedef int mac ;
struct TYPE_11__ {int fragments; int num_duplicates; } ;
struct TYPE_10__ {int filtered; } ;
struct TYPE_8__ {scalar_t__ wake_tx_queue; } ;


 int DEBUGFS_ADD (int ) ;
 int DEBUGFS_ADD_COUNTER (int ,int ) ;
 int ETH_ALEN ;
 int NL80211_EXT_FEATURE_AIRTIME_FAIRNESS ;
 int agg_status ;
 int aid ;
 int airtime ;
 int aqm ;
 int debugfs_create_dir (int *,struct dentry*) ;
 int debugfs_create_x32 (char*,int,int ,int *) ;
 int debugfs_create_x64 (char*,int,int ,int *) ;
 int drv_sta_add_debugfs (struct ieee80211_local*,struct ieee80211_sub_if_data*,TYPE_6__*,int ) ;
 int flags ;
 int he_capa ;
 int ht_capa ;
 int last_seq_ctrl ;
 int num_ps_buf_frames ;
 int rx_duplicates ;
 int rx_fragments ;
 TYPE_5__ rx_stats ;
 int snprintf (int *,int,char*,int ) ;
 TYPE_4__ status_stats ;
 int tx_filtered ;
 int vht_capa ;
 scalar_t__ wiphy_ext_feature_isset (int ,int ) ;

void ieee80211_sta_debugfs_add(struct sta_info *sta)
{
 struct ieee80211_local *local = sta->local;
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct dentry *stations_dir = sta->sdata->debugfs.subdir_stations;
 u8 mac[3*ETH_ALEN];

 if (!stations_dir)
  return;

 snprintf(mac, sizeof(mac), "%pM", sta->sta.addr);
 sta->debugfs_dir = debugfs_create_dir(mac, stations_dir);

 DEBUGFS_ADD(flags);
 DEBUGFS_ADD(aid);
 DEBUGFS_ADD(num_ps_buf_frames);
 DEBUGFS_ADD(last_seq_ctrl);
 DEBUGFS_ADD(agg_status);
 DEBUGFS_ADD(ht_capa);
 DEBUGFS_ADD(vht_capa);
 DEBUGFS_ADD(he_capa);

 DEBUGFS_ADD_COUNTER(rx_duplicates, rx_stats.num_duplicates);
 DEBUGFS_ADD_COUNTER(rx_fragments, rx_stats.fragments);
 DEBUGFS_ADD_COUNTER(tx_filtered, status_stats.filtered);

 if (local->ops->wake_tx_queue)
  DEBUGFS_ADD(aqm);

 if (wiphy_ext_feature_isset(local->hw.wiphy,
        NL80211_EXT_FEATURE_AIRTIME_FAIRNESS))
  DEBUGFS_ADD(airtime);

 if (sizeof(sta->driver_buffered_tids) == sizeof(u32))
  debugfs_create_x32("driver_buffered_tids", 0400,
       sta->debugfs_dir,
       (u32 *)&sta->driver_buffered_tids);
 else
  debugfs_create_x64("driver_buffered_tids", 0400,
       sta->debugfs_dir,
       (u64 *)&sta->driver_buffered_tids);

 drv_sta_add_debugfs(local, sdata, &sta->sta, sta->debugfs_dir);
}
