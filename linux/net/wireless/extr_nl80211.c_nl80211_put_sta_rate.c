
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef unsigned long u16 ;
struct sk_buff {int dummy; } ;
struct rate_info {int bw; int flags; int he_ru_alloc; int he_dcm; int he_gi; int nss; int mcs; } ;
struct nlattr {int dummy; } ;
typedef enum nl80211_rate_info { ____Placeholder_nl80211_rate_info } nl80211_rate_info ;


 int NL80211_RATE_INFO_10_MHZ_WIDTH ;
 int NL80211_RATE_INFO_160_MHZ_WIDTH ;
 int NL80211_RATE_INFO_40_MHZ_WIDTH ;
 int NL80211_RATE_INFO_5_MHZ_WIDTH ;
 int NL80211_RATE_INFO_80_MHZ_WIDTH ;
 int NL80211_RATE_INFO_BITRATE ;
 int NL80211_RATE_INFO_BITRATE32 ;
 int NL80211_RATE_INFO_HE_DCM ;
 int NL80211_RATE_INFO_HE_GI ;
 int NL80211_RATE_INFO_HE_MCS ;
 int NL80211_RATE_INFO_HE_NSS ;
 int NL80211_RATE_INFO_HE_RU_ALLOC ;
 int NL80211_RATE_INFO_MCS ;
 int NL80211_RATE_INFO_SHORT_GI ;
 int NL80211_RATE_INFO_VHT_MCS ;
 int NL80211_RATE_INFO_VHT_NSS ;







 int RATE_INFO_FLAGS_HE_MCS ;
 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 int RATE_INFO_FLAGS_VHT_MCS ;
 int WARN_ON (int) ;
 unsigned long cfg80211_calculate_bitrate (struct rate_info*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,unsigned long) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,unsigned long) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

bool nl80211_put_sta_rate(struct sk_buff *msg, struct rate_info *info, int attr)
{
 struct nlattr *rate;
 u32 bitrate;
 u16 bitrate_compat;
 enum nl80211_rate_info rate_flg;

 rate = nla_nest_start_noflag(msg, attr);
 if (!rate)
  return 0;


 bitrate = cfg80211_calculate_bitrate(info);

 bitrate_compat = bitrate < (1UL << 16) ? bitrate : 0;
 if (bitrate > 0 &&
     nla_put_u32(msg, NL80211_RATE_INFO_BITRATE32, bitrate))
  return 0;
 if (bitrate_compat > 0 &&
     nla_put_u16(msg, NL80211_RATE_INFO_BITRATE, bitrate_compat))
  return 0;

 switch (info->bw) {
 case 130:
  rate_flg = NL80211_RATE_INFO_5_MHZ_WIDTH;
  break;
 case 134:
  rate_flg = NL80211_RATE_INFO_10_MHZ_WIDTH;
  break;
 default:
  WARN_ON(1);

 case 132:
  rate_flg = 0;
  break;
 case 131:
  rate_flg = NL80211_RATE_INFO_40_MHZ_WIDTH;
  break;
 case 129:
  rate_flg = NL80211_RATE_INFO_80_MHZ_WIDTH;
  break;
 case 133:
  rate_flg = NL80211_RATE_INFO_160_MHZ_WIDTH;
  break;
 case 128:
  rate_flg = 0;
  WARN_ON(!(info->flags & RATE_INFO_FLAGS_HE_MCS));
 }

 if (rate_flg && nla_put_flag(msg, rate_flg))
  return 0;

 if (info->flags & RATE_INFO_FLAGS_MCS) {
  if (nla_put_u8(msg, NL80211_RATE_INFO_MCS, info->mcs))
   return 0;
  if (info->flags & RATE_INFO_FLAGS_SHORT_GI &&
      nla_put_flag(msg, NL80211_RATE_INFO_SHORT_GI))
   return 0;
 } else if (info->flags & RATE_INFO_FLAGS_VHT_MCS) {
  if (nla_put_u8(msg, NL80211_RATE_INFO_VHT_MCS, info->mcs))
   return 0;
  if (nla_put_u8(msg, NL80211_RATE_INFO_VHT_NSS, info->nss))
   return 0;
  if (info->flags & RATE_INFO_FLAGS_SHORT_GI &&
      nla_put_flag(msg, NL80211_RATE_INFO_SHORT_GI))
   return 0;
 } else if (info->flags & RATE_INFO_FLAGS_HE_MCS) {
  if (nla_put_u8(msg, NL80211_RATE_INFO_HE_MCS, info->mcs))
   return 0;
  if (nla_put_u8(msg, NL80211_RATE_INFO_HE_NSS, info->nss))
   return 0;
  if (nla_put_u8(msg, NL80211_RATE_INFO_HE_GI, info->he_gi))
   return 0;
  if (nla_put_u8(msg, NL80211_RATE_INFO_HE_DCM, info->he_dcm))
   return 0;
  if (info->bw == 128 &&
      nla_put_u8(msg, NL80211_RATE_INFO_HE_RU_ALLOC,
          info->he_ru_alloc))
   return 0;
 }

 nla_nest_end(msg, rate);
 return 1;
}
