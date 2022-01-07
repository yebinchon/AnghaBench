
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct sta_info {TYPE_2__* mesh; int * tx_filtered; int * ps_tx_buf; TYPE_1__ sta; int sdata; } ;
struct ieee802_11_elems {int * awake_window; int tim_len; int tim; } ;
struct TYPE_4__ {scalar_t__ plink_state; int aid; } ;


 int IEEE80211_NUM_ACS ;
 scalar_t__ NL80211_PLINK_ESTAB ;
 int WLAN_STA_MPSP_OWNER ;
 int WLAN_STA_PS_STA ;
 int ieee80211_check_tim (int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int mps_dbg (int ,char*,int ) ;
 int mps_frame_deliver (struct sta_info*,int) ;
 int mpsp_trigger_send (struct sta_info*,int,int) ;
 scalar_t__ skb_queue_len (int *) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

void ieee80211_mps_frame_release(struct sta_info *sta,
     struct ieee802_11_elems *elems)
{
 int ac, buffer_local = 0;
 bool has_buffered = 0;

 if (sta->mesh->plink_state == NL80211_PLINK_ESTAB)
  has_buffered = ieee80211_check_tim(elems->tim, elems->tim_len,
         sta->mesh->aid);

 if (has_buffered)
  mps_dbg(sta->sdata, "%pM indicates buffered frames\n",
   sta->sta.addr);


 if (test_sta_flag(sta, WLAN_STA_PS_STA) &&
     (!elems->awake_window || !le16_to_cpu(*elems->awake_window)))
  return;

 if (!test_sta_flag(sta, WLAN_STA_MPSP_OWNER))
  for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
   buffer_local += skb_queue_len(&sta->ps_tx_buf[ac]) +
     skb_queue_len(&sta->tx_filtered[ac]);

 if (!has_buffered && !buffer_local)
  return;

 if (sta->mesh->plink_state == NL80211_PLINK_ESTAB)
  mpsp_trigger_send(sta, has_buffered, !buffer_local);
 else
  mps_frame_deliver(sta, 1);
}
