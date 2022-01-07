
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_chan_def {int center_freq1; int width; int center_freq2; } ;



 scalar_t__ WARN_ON (int) ;
 int cfg80211_chandef_get_width (struct cfg80211_chan_def const*) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def const*) ;
 int cfg80211_get_chans_dfs_available (struct wiphy*,int,int) ;

__attribute__((used)) static bool cfg80211_chandef_dfs_available(struct wiphy *wiphy,
    const struct cfg80211_chan_def *chandef)
{
 int width;
 int r;

 if (WARN_ON(!cfg80211_chandef_valid(chandef)))
  return 0;

 width = cfg80211_chandef_get_width(chandef);
 if (width < 0)
  return 0;

 r = cfg80211_get_chans_dfs_available(wiphy, chandef->center_freq1,
          width);


 if (!r)
  return r;

 switch (chandef->width) {
 case 128:
  WARN_ON(!chandef->center_freq2);
  r = cfg80211_get_chans_dfs_available(wiphy,
           chandef->center_freq2,
           width);
  break;
 default:
  WARN_ON(chandef->center_freq2);
  break;
 }

 return r;
}
