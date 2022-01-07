
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_chan_def {int width; int center_freq2; int center_freq1; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int BIT (int ) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_chandef_get_width (struct cfg80211_chan_def const*) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def const*) ;
 int cfg80211_get_chans_dfs_required (struct wiphy*,int ,int) ;

int cfg80211_chandef_dfs_required(struct wiphy *wiphy,
      const struct cfg80211_chan_def *chandef,
      enum nl80211_iftype iftype)
{
 int width;
 int ret;

 if (WARN_ON(!cfg80211_chandef_valid(chandef)))
  return -EINVAL;

 switch (iftype) {
 case 141:
 case 140:
 case 132:
 case 138:
  width = cfg80211_chandef_get_width(chandef);
  if (width < 0)
   return -EINVAL;

  ret = cfg80211_get_chans_dfs_required(wiphy,
            chandef->center_freq1,
            width);
  if (ret < 0)
   return ret;
  else if (ret > 0)
   return BIT(chandef->width);

  if (!chandef->center_freq2)
   return 0;

  ret = cfg80211_get_chans_dfs_required(wiphy,
            chandef->center_freq2,
            width);
  if (ret < 0)
   return ret;
  else if (ret > 0)
   return BIT(chandef->width);

  break;
 case 131:
 case 135:
 case 134:
 case 137:
 case 139:
 case 129:
 case 133:
 case 136:
  break;
 case 130:
 case 128:
  WARN_ON(1);
 }

 return 0;
}
