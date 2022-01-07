
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int * ps_tx_buf; int * tx_filtered; } ;
typedef enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;


 int IEEE80211_FRAME_RELEASE_PSPOLL ;
 int IEEE80211_NUM_ACS ;
 int hweight16 (unsigned long) ;
 int* ieee80211_ac_to_qos_mask ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static bool
ieee80211_sta_ps_more_data(struct sta_info *sta, u8 ignored_acs,
      enum ieee80211_frame_release_type reason,
      unsigned long driver_release_tids)
{
 int ac;






 if (reason == IEEE80211_FRAME_RELEASE_PSPOLL &&
     hweight16(driver_release_tids) > 1)
  return 1;

 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  if (ignored_acs & ieee80211_ac_to_qos_mask[ac])
   continue;

  if (!skb_queue_empty(&sta->tx_filtered[ac]) ||
      !skb_queue_empty(&sta->ps_tx_buf[ac]))
   return 1;
 }

 return 0;
}
