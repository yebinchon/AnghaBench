
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


struct TYPE_11__ {int addr; } ;
struct sta_info {scalar_t__ sta_state; TYPE_5__ sta; TYPE_6__* sdata; TYPE_1__* mesh; } ;
typedef enum nl80211_mesh_power_mode { ____Placeholder_nl80211_mesh_power_mode } nl80211_mesh_power_mode ;
struct TYPE_8__ {int num_sta_ps; } ;
struct TYPE_9__ {TYPE_2__ ps; } ;
struct TYPE_10__ {TYPE_3__ mesh; } ;
struct TYPE_12__ {TYPE_4__ u; } ;
struct TYPE_7__ {scalar_t__ plink_state; scalar_t__ peer_pm; int nonpeer_pm; } ;


 scalar_t__ IEEE80211_STA_ASSOC ;
 int NL80211_MESH_POWER_ACTIVE ;
 scalar_t__ NL80211_MESH_POWER_UNKNOWN ;
 scalar_t__ NL80211_PLINK_ESTAB ;
 int WLAN_STA_MPSP_OWNER ;
 int WLAN_STA_MPSP_RECIPIENT ;
 int WLAN_STA_PS_STA ;
 int atomic_inc (int *) ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int ieee80211_sta_ps_deliver_wakeup (struct sta_info*) ;
 int mps_dbg (TYPE_6__*,char*,int ) ;
 int set_sta_flag (struct sta_info*,int ) ;
 int test_sta_flag (struct sta_info*,int ) ;

void ieee80211_mps_sta_status_update(struct sta_info *sta)
{
 enum nl80211_mesh_power_mode pm;
 bool do_buffer;


 if (sta->sta_state < IEEE80211_STA_ASSOC)
  return;





 if (sta->mesh->plink_state == NL80211_PLINK_ESTAB &&
     sta->mesh->peer_pm != NL80211_MESH_POWER_UNKNOWN)
  pm = sta->mesh->peer_pm;
 else
  pm = sta->mesh->nonpeer_pm;

 do_buffer = (pm != NL80211_MESH_POWER_ACTIVE);


 if (sta->mesh->plink_state != NL80211_PLINK_ESTAB) {
  clear_sta_flag(sta, WLAN_STA_MPSP_OWNER);
  clear_sta_flag(sta, WLAN_STA_MPSP_RECIPIENT);
 } else if (!do_buffer) {
  clear_sta_flag(sta, WLAN_STA_MPSP_OWNER);
 }


 if (test_sta_flag(sta, WLAN_STA_PS_STA) == do_buffer)
  return;

 if (do_buffer) {
  set_sta_flag(sta, WLAN_STA_PS_STA);
  atomic_inc(&sta->sdata->u.mesh.ps.num_sta_ps);
  mps_dbg(sta->sdata, "start PS buffering frames towards %pM\n",
   sta->sta.addr);
 } else {
  ieee80211_sta_ps_deliver_wakeup(sta);
 }
}
