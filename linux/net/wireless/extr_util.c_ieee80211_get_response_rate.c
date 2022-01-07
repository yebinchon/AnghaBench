
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int bitrate; } ;


 int BIT (int) ;

struct ieee80211_rate *
ieee80211_get_response_rate(struct ieee80211_supported_band *sband,
       u32 basic_rates, int bitrate)
{
 struct ieee80211_rate *result = &sband->bitrates[0];
 int i;

 for (i = 0; i < sband->n_bitrates; i++) {
  if (!(basic_rates & BIT(i)))
   continue;
  if (sband->bitrates[i].bitrate > bitrate)
   continue;
  result = &sband->bitrates[i];
 }

 return result;
}
