
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int beacon_rate; } ;
struct TYPE_5__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct ieee80211_rx_status {int freq; } ;
struct ieee80211_mgmt {int dummy; } ;
struct TYPE_6__ {int wiphy; } ;
struct ieee80211_local {TYPE_3__ hw; } ;
struct ieee80211_channel {int dummy; } ;
struct ieee80211_bss {int beacon_rate; } ;


 struct ieee80211_bss* ieee80211_bss_info_update (struct ieee80211_local*,struct ieee80211_rx_status*,struct ieee80211_mgmt*,size_t,struct ieee80211_channel*) ;
 struct ieee80211_channel* ieee80211_get_channel (int ,int ) ;
 int ieee80211_rx_bss_put (struct ieee80211_local*,struct ieee80211_bss*) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static void ieee80211_rx_bss_info(struct ieee80211_sub_if_data *sdata,
      struct ieee80211_mgmt *mgmt, size_t len,
      struct ieee80211_rx_status *rx_status)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_bss *bss;
 struct ieee80211_channel *channel;

 sdata_assert_lock(sdata);

 channel = ieee80211_get_channel(local->hw.wiphy, rx_status->freq);
 if (!channel)
  return;

 bss = ieee80211_bss_info_update(local, rx_status, mgmt, len, channel);
 if (bss) {
  sdata->vif.bss_conf.beacon_rate = bss->beacon_rate;
  ieee80211_rx_bss_put(local, bss);
 }
}
