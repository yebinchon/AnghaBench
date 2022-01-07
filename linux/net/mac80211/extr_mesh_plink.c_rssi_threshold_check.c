
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int signal; } ;
struct sta_info {TYPE_4__ rx_stats_avg; } ;
struct TYPE_5__ {scalar_t__ rssi_threshold; } ;
struct TYPE_6__ {TYPE_1__ mshcfg; } ;
struct TYPE_7__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; } ;
typedef scalar_t__ s8 ;
typedef scalar_t__ s32 ;


 scalar_t__ ewma_signal_read (int *) ;

__attribute__((used)) static bool rssi_threshold_check(struct ieee80211_sub_if_data *sdata,
     struct sta_info *sta)
{
 s32 rssi_threshold = sdata->u.mesh.mshcfg.rssi_threshold;
 return rssi_threshold == 0 ||
        (sta &&
  (s8)-ewma_signal_read(&sta->rx_stats_avg.signal) >
      rssi_threshold);
}
