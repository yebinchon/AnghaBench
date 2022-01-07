
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_chan_def {int center_freq1; int width; int center_freq2; } ;



 scalar_t__ WARN_ON (int) ;
 int cfg80211_chandef_get_width (struct cfg80211_chan_def const*) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def const*) ;
 int cfg80211_get_chans_dfs_usable (struct wiphy*,int,int) ;

bool cfg80211_chandef_dfs_usable(struct wiphy *wiphy,
     const struct cfg80211_chan_def *chandef)
{
 int width;
 int r1, r2 = 0;

 if (WARN_ON(!cfg80211_chandef_valid(chandef)))
  return 0;

 width = cfg80211_chandef_get_width(chandef);
 if (width < 0)
  return 0;

 r1 = cfg80211_get_chans_dfs_usable(wiphy, chandef->center_freq1,
       width);

 if (r1 < 0)
  return 0;

 switch (chandef->width) {
 case 128:
  WARN_ON(!chandef->center_freq2);
  r2 = cfg80211_get_chans_dfs_usable(wiphy,
         chandef->center_freq2,
         width);
  if (r2 < 0)
   return 0;
  break;
 default:
  WARN_ON(chandef->center_freq2);
  break;
 }

 return (r1 + r2 > 0);
}
