
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct ieee80211_edmg {int channels; int bw_config; } ;
struct ieee80211_channel {int flags; } ;
typedef enum ieee80211_edmg_bw_config { ____Placeholder_ieee80211_edmg_bw_config } ieee80211_edmg_bw_config ;


 int BIT (int) ;
 int IEEE80211_CHAN_DISABLED ;
 int NL80211_BAND_60GHZ ;
 int ieee80211_channel_to_frequency (int,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int) ;

__attribute__((used)) static bool cfg80211_edmg_usable(struct wiphy *wiphy, u8 edmg_channels,
     enum ieee80211_edmg_bw_config edmg_bw_config,
     int primary_channel,
     struct ieee80211_edmg *edmg_cap)
{
 struct ieee80211_channel *chan;
 int i, freq;
 int channels_counter = 0;

 if (!edmg_channels && !edmg_bw_config)
  return 1;

 if ((!edmg_channels && edmg_bw_config) ||
     (edmg_channels && !edmg_bw_config))
  return 0;

 if (!(edmg_channels & BIT(primary_channel - 1)))
  return 0;


 for (i = 0; i < 6; i++) {
  if (!(edmg_channels & BIT(i)))
   continue;

  if (!(edmg_cap->channels & BIT(i)))
   return 0;

  channels_counter++;

  freq = ieee80211_channel_to_frequency(i + 1,
            NL80211_BAND_60GHZ);
  chan = ieee80211_get_channel(wiphy, freq);
  if (!chan || chan->flags & IEEE80211_CHAN_DISABLED)
   return 0;
 }


 if (channels_counter > 4)
  return 0;




 if ((edmg_bw_config % 4) > (edmg_cap->bw_config % 4))
  return 0;

 if (edmg_bw_config > edmg_cap->bw_config)
  return 0;

 return 1;
}
