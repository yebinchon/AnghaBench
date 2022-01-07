
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_rx_status {int bw; int enc_flags; int encoding; int nss; int rate_idx; int band; int he_gi; int he_ru; int he_dcm; } ;


 int BW ;
 int HE_DCM ;
 int HE_GI ;
 int HE_MCS ;
 int HE_NSS ;
 int HE_RU ;
 int HT_MCS ;
 int LEGACY_BAND ;
 int LEGACY_IDX ;
 int RX_ENC_FLAG_SHORT_GI ;




 int SGI ;
 int STA_STATS_FIELD (int ,int) ;
 int STA_STATS_RATE_INVALID ;
 int STA_STATS_RATE_TYPE_HE ;
 int STA_STATS_RATE_TYPE_HT ;
 int STA_STATS_RATE_TYPE_LEGACY ;
 int STA_STATS_RATE_TYPE_VHT ;
 int TYPE ;
 int VHT_MCS ;
 int VHT_NSS ;
 int WARN_ON (int) ;

__attribute__((used)) static inline u32 sta_stats_encode_rate(struct ieee80211_rx_status *s)
{
 u32 r;

 r = STA_STATS_FIELD(BW, s->bw);

 if (s->enc_flags & RX_ENC_FLAG_SHORT_GI)
  r |= STA_STATS_FIELD(SGI, 1);

 switch (s->encoding) {
 case 128:
  r |= STA_STATS_FIELD(TYPE, STA_STATS_RATE_TYPE_VHT);
  r |= STA_STATS_FIELD(VHT_NSS, s->nss);
  r |= STA_STATS_FIELD(VHT_MCS, s->rate_idx);
  break;
 case 130:
  r |= STA_STATS_FIELD(TYPE, STA_STATS_RATE_TYPE_HT);
  r |= STA_STATS_FIELD(HT_MCS, s->rate_idx);
  break;
 case 129:
  r |= STA_STATS_FIELD(TYPE, STA_STATS_RATE_TYPE_LEGACY);
  r |= STA_STATS_FIELD(LEGACY_BAND, s->band);
  r |= STA_STATS_FIELD(LEGACY_IDX, s->rate_idx);
  break;
 case 131:
  r |= STA_STATS_FIELD(TYPE, STA_STATS_RATE_TYPE_HE);
  r |= STA_STATS_FIELD(HE_NSS, s->nss);
  r |= STA_STATS_FIELD(HE_MCS, s->rate_idx);
  r |= STA_STATS_FIELD(HE_GI, s->he_gi);
  r |= STA_STATS_FIELD(HE_RU, s->he_ru);
  r |= STA_STATS_FIELD(HE_DCM, s->he_dcm);
  break;
 default:
  WARN_ON(1);
  return STA_STATS_RATE_INVALID;
 }

 return r;
}
