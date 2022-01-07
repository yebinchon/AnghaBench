
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int flags; scalar_t__ dfs_state; } ;


 int EINVAL ;
 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_RADAR ;
 scalar_t__ NL80211_DFS_UNAVAILABLE ;
 scalar_t__ NL80211_DFS_USABLE ;
 scalar_t__ cfg80211_get_end_freq (scalar_t__,scalar_t__) ;
 scalar_t__ cfg80211_get_start_freq (scalar_t__,scalar_t__) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,scalar_t__) ;

__attribute__((used)) static int cfg80211_get_chans_dfs_usable(struct wiphy *wiphy,
      u32 center_freq,
      u32 bandwidth)
{
 struct ieee80211_channel *c;
 u32 freq, start_freq, end_freq;
 int count = 0;

 start_freq = cfg80211_get_start_freq(center_freq, bandwidth);
 end_freq = cfg80211_get_end_freq(center_freq, bandwidth);







 for (freq = start_freq; freq <= end_freq; freq += 20) {
  c = ieee80211_get_channel(wiphy, freq);
  if (!c)
   return -EINVAL;

  if (c->flags & IEEE80211_CHAN_DISABLED)
   return -EINVAL;

  if (c->flags & IEEE80211_CHAN_RADAR) {
   if (c->dfs_state == NL80211_DFS_UNAVAILABLE)
    return -EINVAL;

   if (c->dfs_state == NL80211_DFS_USABLE)
    count++;
  }
 }

 return count;
}
