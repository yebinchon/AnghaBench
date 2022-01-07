
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_freq_range {int dummy; } ;
struct ieee80211_channel {int center_freq; } ;


 int MHZ_TO_KHZ (int) ;
 scalar_t__ cfg80211_does_bw_fit_range (struct ieee80211_freq_range*,int ,int ) ;

__attribute__((used)) static bool wiphy_freq_limits_valid_chan(struct wiphy *wiphy,
      struct ieee80211_freq_range *freq_limits,
      unsigned int n_freq_limits,
      struct ieee80211_channel *chan)
{
 u32 bw = MHZ_TO_KHZ(20);
 int i;

 for (i = 0; i < n_freq_limits; i++) {
  struct ieee80211_freq_range *limit = &freq_limits[i];

  if (cfg80211_does_bw_fit_range(limit,
            MHZ_TO_KHZ(chan->center_freq),
            bw))
   return 1;
 }

 return 0;
}
