
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_freq_range {scalar_t__ end_freq_khz; scalar_t__ start_freq_khz; } ;


 int ONE_GHZ_IN_KHZ ;
 int abs (scalar_t__) ;

__attribute__((used)) static bool freq_in_rule_band(const struct ieee80211_freq_range *freq_range,
         u32 freq_khz)
{






 u32 limit = freq_khz > 45 * 1000000 ?
   20 * 1000000 : 2 * 1000000;
 if (abs(freq_khz - freq_range->start_freq_khz) <= limit)
  return 1;
 if (abs(freq_khz - freq_range->end_freq_khz) <= limit)
  return 1;
 return 0;

}
