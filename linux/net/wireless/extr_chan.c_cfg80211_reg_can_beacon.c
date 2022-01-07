
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int _cfg80211_reg_can_beacon (struct wiphy*,struct cfg80211_chan_def*,int,int) ;

bool cfg80211_reg_can_beacon(struct wiphy *wiphy,
        struct cfg80211_chan_def *chandef,
        enum nl80211_iftype iftype)
{
 return _cfg80211_reg_can_beacon(wiphy, chandef, iftype, 1);
}
