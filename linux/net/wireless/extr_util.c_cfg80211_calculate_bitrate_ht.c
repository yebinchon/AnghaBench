
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rate_info {int mcs; scalar_t__ bw; int flags; } ;


 scalar_t__ RATE_INFO_BW_40 ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 scalar_t__ WARN_ON_ONCE (int) ;

__attribute__((used)) static u32 cfg80211_calculate_bitrate_ht(struct rate_info *rate)
{
 int modulation, streams, bitrate;


 if (WARN_ON_ONCE(rate->mcs >= 32))
  return 0;

 modulation = rate->mcs & 7;
 streams = (rate->mcs >> 3) + 1;

 bitrate = (rate->bw == RATE_INFO_BW_40) ? 13500000 : 6500000;

 if (modulation < 4)
  bitrate *= (modulation + 1);
 else if (modulation == 4)
  bitrate *= (modulation + 2);
 else
  bitrate *= (modulation + 3);

 bitrate *= streams;

 if (rate->flags & RATE_INFO_FLAGS_SHORT_GI)
  bitrate = (bitrate / 9) * 10;


 return (bitrate + 50000) / 100000;
}
