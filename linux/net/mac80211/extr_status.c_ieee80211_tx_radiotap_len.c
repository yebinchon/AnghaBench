
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_tx_status {TYPE_1__* rate; } ;
struct TYPE_6__ {TYPE_2__* rates; } ;
struct ieee80211_tx_info {TYPE_3__ status; } ;
struct ieee80211_radiotap_header {int dummy; } ;
struct TYPE_5__ {scalar_t__ idx; int flags; } ;
struct TYPE_4__ {int flags; } ;


 int ALIGN (int,int) ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_VHT_MCS ;
 int RATE_INFO_FLAGS_DMG ;
 int RATE_INFO_FLAGS_EDMG ;
 int RATE_INFO_FLAGS_HE_MCS ;
 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_VHT_MCS ;

__attribute__((used)) static int ieee80211_tx_radiotap_len(struct ieee80211_tx_info *info,
         struct ieee80211_tx_status *status)
{
 int len = sizeof(struct ieee80211_radiotap_header);


 if (status && status->rate && !(status->rate->flags &
     (RATE_INFO_FLAGS_MCS |
      RATE_INFO_FLAGS_DMG |
      RATE_INFO_FLAGS_EDMG |
      RATE_INFO_FLAGS_VHT_MCS |
      RATE_INFO_FLAGS_HE_MCS)))
  len += 2;
 else if (info->status.rates[0].idx >= 0 &&
   !(info->status.rates[0].flags &
     (IEEE80211_TX_RC_MCS | IEEE80211_TX_RC_VHT_MCS)))
  len += 2;


 len += 2;


 len += 1;



 if (status && status->rate) {
  if (status->rate->flags & RATE_INFO_FLAGS_MCS)
   len += 3;
  else if (status->rate->flags & RATE_INFO_FLAGS_VHT_MCS)
   len = ALIGN(len, 2) + 12;
  else if (status->rate->flags & RATE_INFO_FLAGS_HE_MCS)
   len = ALIGN(len, 2) + 12;
 } else if (info->status.rates[0].idx >= 0) {
  if (info->status.rates[0].flags & IEEE80211_TX_RC_MCS)
   len += 3;
  else if (info->status.rates[0].flags & IEEE80211_TX_RC_VHT_MCS)
   len = ALIGN(len, 2) + 12;
 }

 return len;
}
