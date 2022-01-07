
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_chan_def {int center_freq2; int center_freq1; } ;
typedef enum nl80211_dfs_state { ____Placeholder_nl80211_dfs_state } nl80211_dfs_state ;


 scalar_t__ WARN_ON (int) ;
 int cfg80211_chandef_get_width (struct cfg80211_chan_def const*) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def const*) ;
 int cfg80211_set_chans_dfs_state (struct wiphy*,int ,int,int) ;

void cfg80211_set_dfs_state(struct wiphy *wiphy,
       const struct cfg80211_chan_def *chandef,
       enum nl80211_dfs_state dfs_state)
{
 int width;

 if (WARN_ON(!cfg80211_chandef_valid(chandef)))
  return;

 width = cfg80211_chandef_get_width(chandef);
 if (width < 0)
  return;

 cfg80211_set_chans_dfs_state(wiphy, chandef->center_freq1,
         width, dfs_state);

 if (!chandef->center_freq2)
  return;
 cfg80211_set_chans_dfs_state(wiphy, chandef->center_freq2,
         width, dfs_state);
}
