
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef unsigned int u16 ;
struct rate_info {size_t mcs; int legacy; int flags; int nss; int bw; } ;
struct ieee80211_supported_band {TYPE_3__* bitrates; } ;
struct ieee80211_rx_status {int mactime; int encoding; size_t rate_idx; int enc_flags; size_t band; int flag; int nss; int bw; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
typedef int ri ;
struct TYPE_6__ {int bitrate; } ;
struct TYPE_4__ {struct ieee80211_supported_band** bands; } ;


 int DIV_ROUND_UP (int,int) ;
 size_t NL80211_BAND_5GHZ ;


 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 int RATE_INFO_FLAGS_VHT_MCS ;
 int RX_ENC_FLAG_SHORTPRE ;
 int RX_ENC_FLAG_SHORT_GI ;



 int RX_FLAG_MACTIME_END ;
 int RX_FLAG_MACTIME_PLCP_START ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ONCE (int,char*,unsigned long long,size_t,int ) ;
 unsigned int cfg80211_calculate_bitrate (struct rate_info*) ;
 int ieee80211_have_rx_timestamp (struct ieee80211_rx_status*) ;
 int memset (struct rate_info*,int ,int) ;

u64 ieee80211_calculate_rx_timestamp(struct ieee80211_local *local,
         struct ieee80211_rx_status *status,
         unsigned int mpdu_len,
         unsigned int mpdu_offset)
{
 u64 ts = status->mactime;
 struct rate_info ri;
 u16 rate;

 if (WARN_ON(!ieee80211_have_rx_timestamp(status)))
  return 0;

 memset(&ri, 0, sizeof(ri));

 ri.bw = status->bw;


 switch (status->encoding) {
 case 130:
  ri.mcs = status->rate_idx;
  ri.flags |= RATE_INFO_FLAGS_MCS;
  if (status->enc_flags & RX_ENC_FLAG_SHORT_GI)
   ri.flags |= RATE_INFO_FLAGS_SHORT_GI;
  break;
 case 128:
  ri.flags |= RATE_INFO_FLAGS_VHT_MCS;
  ri.mcs = status->rate_idx;
  ri.nss = status->nss;
  if (status->enc_flags & RX_ENC_FLAG_SHORT_GI)
   ri.flags |= RATE_INFO_FLAGS_SHORT_GI;
  break;
 default:
  WARN_ON(1);

 case 129: {
  struct ieee80211_supported_band *sband;
  int shift = 0;
  int bitrate;

  switch (status->bw) {
  case 132:
   shift = 1;
   break;
  case 131:
   shift = 2;
   break;
  }

  sband = local->hw.wiphy->bands[status->band];
  bitrate = sband->bitrates[status->rate_idx].bitrate;
  ri.legacy = DIV_ROUND_UP(bitrate, (1 << shift));

  if (status->flag & RX_FLAG_MACTIME_PLCP_START) {

   if (status->band == NL80211_BAND_5GHZ) {
    ts += 20 << shift;
    mpdu_offset += 2;
   } else if (status->enc_flags & RX_ENC_FLAG_SHORTPRE) {
    ts += 96;
   } else {
    ts += 192;
   }
  }
  break;
  }
 }

 rate = cfg80211_calculate_bitrate(&ri);
 if (WARN_ONCE(!rate,
        "Invalid bitrate: flags=0x%llx, idx=%d, vht_nss=%d\n",
        (unsigned long long)status->flag, status->rate_idx,
        status->nss))
  return 0;


 if (status->flag & RX_FLAG_MACTIME_END)
  ts -= mpdu_len * 8 * 10 / rate;

 ts += mpdu_offset * 8 * 10 / rate;

 return ts;
}
