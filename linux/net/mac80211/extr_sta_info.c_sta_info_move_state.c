
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int addr; int support_p2p_ps; } ;
struct sta_info {int sta_state; TYPE_2__ sta; TYPE_3__* sdata; int _flags; int assoc_at; int local; } ;
typedef enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;
struct TYPE_9__ {int type; } ;
struct TYPE_11__ {int dev; TYPE_1__ vif; } ;


 int EINVAL ;




 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_AP_VLAN ;
 int WARN (int,char*,int) ;
 int WLAN_STA_ASSOC ;
 int WLAN_STA_AUTH ;
 int WLAN_STA_AUTHORIZED ;
 int WLAN_STA_INSERTED ;
 int cfg80211_send_layer2_update (int ,int ) ;
 int clear_bit (int ,int *) ;
 int drv_sta_state (int ,TYPE_3__*,struct sta_info*,int const,int) ;
 int ieee80211_check_fast_rx (struct sta_info*) ;
 int ieee80211_check_fast_xmit (struct sta_info*) ;
 int ieee80211_clear_fast_rx (struct sta_info*) ;
 int ieee80211_clear_fast_xmit (struct sta_info*) ;
 int ieee80211_recalc_min_chandef (TYPE_3__*) ;
 int ieee80211_recalc_p2p_go_ps_allowed (TYPE_3__*) ;
 int ieee80211_vif_dec_num_mcast (TYPE_3__*) ;
 int ieee80211_vif_inc_num_mcast (TYPE_3__*) ;
 int ktime_get_boottime_ns () ;
 int might_sleep () ;
 int set_bit (int ,int *) ;
 int sta_dbg (TYPE_3__*,char*,int ,int) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

int sta_info_move_state(struct sta_info *sta,
   enum ieee80211_sta_state new_state)
{
 might_sleep();

 if (sta->sta_state == new_state)
  return 0;



 switch (new_state) {
 case 128:
  if (sta->sta_state != 130)
   return -EINVAL;
  break;
 case 130:
  if (sta->sta_state != 128 &&
      sta->sta_state != 131)
   return -EINVAL;
  break;
 case 131:
  if (sta->sta_state != 130 &&
      sta->sta_state != 129)
   return -EINVAL;
  break;
 case 129:
  if (sta->sta_state != 131)
   return -EINVAL;
  break;
 default:
  WARN(1, "invalid state %d", new_state);
  return -EINVAL;
 }

 sta_dbg(sta->sdata, "moving STA %pM to state %d\n",
  sta->sta.addr, new_state);





 if (test_sta_flag(sta, WLAN_STA_INSERTED)) {
  int err = drv_sta_state(sta->local, sta->sdata, sta,
     sta->sta_state, new_state);
  if (err)
   return err;
 }



 switch (new_state) {
 case 128:
  if (sta->sta_state == 130)
   clear_bit(WLAN_STA_AUTH, &sta->_flags);
  break;
 case 130:
  if (sta->sta_state == 128) {
   set_bit(WLAN_STA_AUTH, &sta->_flags);
  } else if (sta->sta_state == 131) {
   clear_bit(WLAN_STA_ASSOC, &sta->_flags);
   ieee80211_recalc_min_chandef(sta->sdata);
   if (!sta->sta.support_p2p_ps)
    ieee80211_recalc_p2p_go_ps_allowed(sta->sdata);
  }
  break;
 case 131:
  if (sta->sta_state == 130) {
   set_bit(WLAN_STA_ASSOC, &sta->_flags);
   sta->assoc_at = ktime_get_boottime_ns();
   ieee80211_recalc_min_chandef(sta->sdata);
   if (!sta->sta.support_p2p_ps)
    ieee80211_recalc_p2p_go_ps_allowed(sta->sdata);
  } else if (sta->sta_state == 129) {
   ieee80211_vif_dec_num_mcast(sta->sdata);
   clear_bit(WLAN_STA_AUTHORIZED, &sta->_flags);
   ieee80211_clear_fast_xmit(sta);
   ieee80211_clear_fast_rx(sta);
  }
  break;
 case 129:
  if (sta->sta_state == 131) {
   ieee80211_vif_inc_num_mcast(sta->sdata);
   set_bit(WLAN_STA_AUTHORIZED, &sta->_flags);
   ieee80211_check_fast_xmit(sta);
   ieee80211_check_fast_rx(sta);
  }
  if (sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN ||
      sta->sdata->vif.type == NL80211_IFTYPE_AP)
   cfg80211_send_layer2_update(sta->sdata->dev,
          sta->sta.addr);
  break;
 default:
  break;
 }

 sta->sta_state = new_state;

 return 0;
}
