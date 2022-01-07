
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct ieee80211_hdr {int frame_control; int addr1; } ;


 int ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_mpsp_trigger_process (int ,struct sta_info*,int,int) ;
 scalar_t__ is_unicast_ether_addr (int ) ;
 int mps_set_sta_nonpeer_pm (struct sta_info*,struct ieee80211_hdr*) ;
 int mps_set_sta_peer_pm (struct sta_info*,struct ieee80211_hdr*) ;

void ieee80211_mps_rx_h_sta_process(struct sta_info *sta,
        struct ieee80211_hdr *hdr)
{
 if (is_unicast_ether_addr(hdr->addr1) &&
     ieee80211_is_data_qos(hdr->frame_control)) {




  mps_set_sta_peer_pm(sta, hdr);


  ieee80211_mpsp_trigger_process(ieee80211_get_qos_ctl(hdr),
            sta, 0, 0);
 } else {




  mps_set_sta_nonpeer_pm(sta, hdr);
 }
}
