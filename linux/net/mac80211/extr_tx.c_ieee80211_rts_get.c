
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_rts {int ta; int ra; int duration; int frame_control; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int addr2; int addr1; } ;


 int IEEE80211_FTYPE_CTL ;
 int IEEE80211_STYPE_RTS ;
 int cpu_to_le16 (int) ;
 int ieee80211_rts_duration (struct ieee80211_hw*,struct ieee80211_vif*,size_t,struct ieee80211_tx_info const*) ;
 int memcpy (int ,int ,int) ;

void ieee80211_rts_get(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
         const void *frame, size_t frame_len,
         const struct ieee80211_tx_info *frame_txctl,
         struct ieee80211_rts *rts)
{
 const struct ieee80211_hdr *hdr = frame;

 rts->frame_control =
     cpu_to_le16(IEEE80211_FTYPE_CTL | IEEE80211_STYPE_RTS);
 rts->duration = ieee80211_rts_duration(hw, vif, frame_len,
            frame_txctl);
 memcpy(rts->ra, hdr->addr1, sizeof(rts->ra));
 memcpy(rts->ta, hdr->addr2, sizeof(rts->ta));
}
