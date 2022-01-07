
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_channel {int flags; } ;


 int IEEE80211_CHAN_DISABLED ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int ) ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static struct ieee80211_channel *nl80211_get_valid_chan(struct wiphy *wiphy,
       struct nlattr *tb)
{
 struct ieee80211_channel *chan;

 if (tb == ((void*)0))
  return ((void*)0);
 chan = ieee80211_get_channel(wiphy, nla_get_u32(tb));
 if (!chan || chan->flags & IEEE80211_CHAN_DISABLED)
  return ((void*)0);
 return chan;
}
