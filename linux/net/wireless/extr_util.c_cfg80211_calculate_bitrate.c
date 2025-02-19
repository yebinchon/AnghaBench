
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rate_info {int flags; int legacy; } ;


 int RATE_INFO_FLAGS_DMG ;
 int RATE_INFO_FLAGS_EDMG ;
 int RATE_INFO_FLAGS_HE_MCS ;
 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_VHT_MCS ;
 int cfg80211_calculate_bitrate_dmg (struct rate_info*) ;
 int cfg80211_calculate_bitrate_edmg (struct rate_info*) ;
 int cfg80211_calculate_bitrate_he (struct rate_info*) ;
 int cfg80211_calculate_bitrate_ht (struct rate_info*) ;
 int cfg80211_calculate_bitrate_vht (struct rate_info*) ;

u32 cfg80211_calculate_bitrate(struct rate_info *rate)
{
 if (rate->flags & RATE_INFO_FLAGS_MCS)
  return cfg80211_calculate_bitrate_ht(rate);
 if (rate->flags & RATE_INFO_FLAGS_DMG)
  return cfg80211_calculate_bitrate_dmg(rate);
 if (rate->flags & RATE_INFO_FLAGS_EDMG)
  return cfg80211_calculate_bitrate_edmg(rate);
 if (rate->flags & RATE_INFO_FLAGS_VHT_MCS)
  return cfg80211_calculate_bitrate_vht(rate);
 if (rate->flags & RATE_INFO_FLAGS_HE_MCS)
  return cfg80211_calculate_bitrate_he(rate);

 return rate->legacy;
}
