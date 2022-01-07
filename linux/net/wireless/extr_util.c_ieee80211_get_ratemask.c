
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee80211_supported_band {int n_bitrates; TYPE_1__* bitrates; } ;
struct TYPE_2__ {int bitrate; } ;


 int BIT (int) ;
 int EINVAL ;
 unsigned int NL80211_MAX_SUPP_RATES ;

int ieee80211_get_ratemask(struct ieee80211_supported_band *sband,
      const u8 *rates, unsigned int n_rates,
      u32 *mask)
{
 int i, j;

 if (!sband)
  return -EINVAL;

 if (n_rates == 0 || n_rates > NL80211_MAX_SUPP_RATES)
  return -EINVAL;

 *mask = 0;

 for (i = 0; i < n_rates; i++) {
  int rate = (rates[i] & 0x7f) * 5;
  bool found = 0;

  for (j = 0; j < sband->n_bitrates; j++) {
   if (sband->bitrates[j].bitrate == rate) {
    found = 1;
    *mask |= BIT(j);
    break;
   }
  }
  if (!found)
   return -EINVAL;
 }







 return 0;
}
