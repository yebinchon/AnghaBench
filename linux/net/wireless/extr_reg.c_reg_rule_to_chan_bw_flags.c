
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct ieee80211_regdomain {int dummy; } ;
struct ieee80211_freq_range {int max_bandwidth_khz; } ;
struct ieee80211_reg_rule {int flags; struct ieee80211_freq_range freq_range; } ;
struct ieee80211_channel {int center_freq; } ;


 int IEEE80211_CHAN_NO_10MHZ ;
 int IEEE80211_CHAN_NO_160MHZ ;
 int IEEE80211_CHAN_NO_20MHZ ;
 int IEEE80211_CHAN_NO_80MHZ ;
 int IEEE80211_CHAN_NO_HT40 ;
 int MHZ_TO_KHZ (int) ;
 int NL80211_RRF_AUTO_BW ;
 int cfg80211_does_bw_fit_range (struct ieee80211_freq_range const*,int ,int ) ;
 int reg_get_max_bandwidth (struct ieee80211_regdomain const*,struct ieee80211_reg_rule const*) ;

__attribute__((used)) static uint32_t reg_rule_to_chan_bw_flags(const struct ieee80211_regdomain *regd,
       const struct ieee80211_reg_rule *reg_rule,
       const struct ieee80211_channel *chan)
{
 const struct ieee80211_freq_range *freq_range = ((void*)0);
 u32 max_bandwidth_khz, bw_flags = 0;

 freq_range = &reg_rule->freq_range;

 max_bandwidth_khz = freq_range->max_bandwidth_khz;

 if (reg_rule->flags & NL80211_RRF_AUTO_BW)
  max_bandwidth_khz = reg_get_max_bandwidth(regd, reg_rule);


 if (!cfg80211_does_bw_fit_range(freq_range,
     MHZ_TO_KHZ(chan->center_freq),
     MHZ_TO_KHZ(10)))
  bw_flags |= IEEE80211_CHAN_NO_10MHZ;
 if (!cfg80211_does_bw_fit_range(freq_range,
     MHZ_TO_KHZ(chan->center_freq),
     MHZ_TO_KHZ(20)))
  bw_flags |= IEEE80211_CHAN_NO_20MHZ;

 if (max_bandwidth_khz < MHZ_TO_KHZ(10))
  bw_flags |= IEEE80211_CHAN_NO_10MHZ;
 if (max_bandwidth_khz < MHZ_TO_KHZ(20))
  bw_flags |= IEEE80211_CHAN_NO_20MHZ;
 if (max_bandwidth_khz < MHZ_TO_KHZ(40))
  bw_flags |= IEEE80211_CHAN_NO_HT40;
 if (max_bandwidth_khz < MHZ_TO_KHZ(80))
  bw_flags |= IEEE80211_CHAN_NO_80MHZ;
 if (max_bandwidth_khz < MHZ_TO_KHZ(160))
  bw_flags |= IEEE80211_CHAN_NO_160MHZ;
 return bw_flags;
}
