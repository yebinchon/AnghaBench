
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_chan_def {int chan; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int ASSERT_RTNL () ;
 int _cfg80211_reg_can_beacon (struct wiphy*,struct cfg80211_chan_def*,int,int) ;
 int cfg80211_ir_permissive_chan (struct wiphy*,int,int ) ;

bool cfg80211_reg_can_beacon_relax(struct wiphy *wiphy,
       struct cfg80211_chan_def *chandef,
       enum nl80211_iftype iftype)
{
 bool check_no_ir;

 ASSERT_RTNL();







 check_no_ir = !cfg80211_ir_permissive_chan(wiphy, iftype,
         chandef->chan);

 return _cfg80211_reg_can_beacon(wiphy, chandef, iftype, check_no_ir);
}
