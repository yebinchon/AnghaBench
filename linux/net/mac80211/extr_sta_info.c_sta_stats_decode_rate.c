
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct rate_info {int bw; int mcs; int nss; int he_gi; int he_ru_alloc; int he_dcm; int flags; int legacy; } ;
struct ieee80211_supported_band {TYPE_3__* bitrates; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
struct TYPE_6__ {int bitrate; } ;
struct TYPE_4__ {struct ieee80211_supported_band** bands; } ;


 int BW ;
 int DIV_ROUND_UP (int ,int) ;
 int HE_DCM ;
 int HE_GI ;
 int HE_MCS ;
 int HE_NSS ;
 int HE_RU ;
 int HT_MCS ;
 int LEGACY_BAND ;
 int LEGACY_IDX ;
 int RATE_INFO_BW_10 ;
 int RATE_INFO_BW_5 ;
 int RATE_INFO_FLAGS_HE_MCS ;
 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 int RATE_INFO_FLAGS_VHT_MCS ;
 int SGI ;
 int STA_STATS_GET (int ,int ) ;




 int TYPE ;
 int VHT_MCS ;
 int VHT_NSS ;

__attribute__((used)) static void sta_stats_decode_rate(struct ieee80211_local *local, u32 rate,
      struct rate_info *rinfo)
{
 rinfo->bw = STA_STATS_GET(BW, rate);

 switch (STA_STATS_GET(TYPE, rate)) {
 case 128:
  rinfo->flags = RATE_INFO_FLAGS_VHT_MCS;
  rinfo->mcs = STA_STATS_GET(VHT_MCS, rate);
  rinfo->nss = STA_STATS_GET(VHT_NSS, rate);
  if (STA_STATS_GET(SGI, rate))
   rinfo->flags |= RATE_INFO_FLAGS_SHORT_GI;
  break;
 case 130:
  rinfo->flags = RATE_INFO_FLAGS_MCS;
  rinfo->mcs = STA_STATS_GET(HT_MCS, rate);
  if (STA_STATS_GET(SGI, rate))
   rinfo->flags |= RATE_INFO_FLAGS_SHORT_GI;
  break;
 case 129: {
  struct ieee80211_supported_band *sband;
  u16 brate;
  unsigned int shift;
  int band = STA_STATS_GET(LEGACY_BAND, rate);
  int rate_idx = STA_STATS_GET(LEGACY_IDX, rate);

  sband = local->hw.wiphy->bands[band];
  brate = sband->bitrates[rate_idx].bitrate;
  if (rinfo->bw == RATE_INFO_BW_5)
   shift = 2;
  else if (rinfo->bw == RATE_INFO_BW_10)
   shift = 1;
  else
   shift = 0;
  rinfo->legacy = DIV_ROUND_UP(brate, 1 << shift);
  break;
  }
 case 131:
  rinfo->flags = RATE_INFO_FLAGS_HE_MCS;
  rinfo->mcs = STA_STATS_GET(HE_MCS, rate);
  rinfo->nss = STA_STATS_GET(HE_NSS, rate);
  rinfo->he_gi = STA_STATS_GET(HE_GI, rate);
  rinfo->he_ru_alloc = STA_STATS_GET(HE_RU, rate);
  rinfo->he_dcm = STA_STATS_GET(HE_DCM, rate);
  break;
 }
}
