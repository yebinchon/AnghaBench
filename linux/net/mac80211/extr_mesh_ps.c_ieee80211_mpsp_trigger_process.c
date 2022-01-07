
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {TYPE_1__* mesh; } ;
struct TYPE_2__ {scalar_t__ local_pm; } ;


 int IEEE80211_QOS_CTL_EOSP ;
 int IEEE80211_QOS_CTL_RSPI ;
 scalar_t__ NL80211_MESH_POWER_ACTIVE ;
 int WLAN_STA_MPSP_OWNER ;
 int WLAN_STA_MPSP_RECIPIENT ;
 int WLAN_STA_PS_STA ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int mps_frame_deliver (struct sta_info*,int) ;
 int set_sta_flag (struct sta_info*,int ) ;
 int test_and_set_sta_flag (struct sta_info*,int ) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

void ieee80211_mpsp_trigger_process(u8 *qc, struct sta_info *sta,
        bool tx, bool acked)
{
 u8 rspi = qc[1] & (IEEE80211_QOS_CTL_RSPI >> 8);
 u8 eosp = qc[0] & IEEE80211_QOS_CTL_EOSP;

 if (tx) {
  if (rspi && acked)
   set_sta_flag(sta, WLAN_STA_MPSP_RECIPIENT);

  if (eosp)
   clear_sta_flag(sta, WLAN_STA_MPSP_OWNER);
  else if (acked &&
    test_sta_flag(sta, WLAN_STA_PS_STA) &&
    !test_and_set_sta_flag(sta, WLAN_STA_MPSP_OWNER))
   mps_frame_deliver(sta, -1);
 } else {
  if (eosp)
   clear_sta_flag(sta, WLAN_STA_MPSP_RECIPIENT);
  else if (sta->mesh->local_pm != NL80211_MESH_POWER_ACTIVE)
   set_sta_flag(sta, WLAN_STA_MPSP_RECIPIENT);

  if (rspi && !test_and_set_sta_flag(sta, WLAN_STA_MPSP_OWNER))
   mps_frame_deliver(sta, -1);
 }
}
