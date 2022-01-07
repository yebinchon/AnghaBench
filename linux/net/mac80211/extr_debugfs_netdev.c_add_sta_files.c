
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int DEBUGFS_ADD (int ) ;
 int DEBUGFS_ADD_MODE (int ,int) ;
 int aid ;
 int beacon_loss ;
 int beacon_timeout ;
 int bssid ;
 int smps ;
 int tdls_wider_bw ;
 int tkip_mic_test ;
 int uapsd_max_sp_len ;
 int uapsd_queues ;

__attribute__((used)) static void add_sta_files(struct ieee80211_sub_if_data *sdata)
{
 DEBUGFS_ADD(bssid);
 DEBUGFS_ADD(aid);
 DEBUGFS_ADD(beacon_timeout);
 DEBUGFS_ADD_MODE(smps, 0600);
 DEBUGFS_ADD_MODE(tkip_mic_test, 0200);
 DEBUGFS_ADD_MODE(beacon_loss, 0200);
 DEBUGFS_ADD_MODE(uapsd_queues, 0600);
 DEBUGFS_ADD_MODE(uapsd_max_sp_len, 0600);
 DEBUGFS_ADD_MODE(tdls_wider_bw, 0600);
}
