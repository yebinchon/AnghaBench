
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regulatory_flags; } ;
struct regulatory_request {scalar_t__ initiator; } ;


 scalar_t__ NL80211_REGDOM_SET_BY_USER ;
 int REGULATORY_COUNTRY_IE_IGNORE ;
 int REGULATORY_DISABLE_BEACON_HINTS ;
 int REGULATORY_WIPHY_SELF_MANAGED ;
 struct regulatory_request* get_last_request () ;
 int reg_call_notifier (struct wiphy*,struct regulatory_request*) ;
 int reg_dev_ignore_cell_hint (struct wiphy*) ;
 int reg_num_devs_support_basehint ;
 int wiphy_all_share_dfs_chan_state (struct wiphy*) ;
 int wiphy_update_regulatory (struct wiphy*,scalar_t__) ;

void wiphy_regulatory_register(struct wiphy *wiphy)
{
 struct regulatory_request *lr = get_last_request();


 if (wiphy->regulatory_flags & REGULATORY_WIPHY_SELF_MANAGED) {
  wiphy->regulatory_flags |= REGULATORY_DISABLE_BEACON_HINTS |
        REGULATORY_COUNTRY_IE_IGNORE;






  if (lr->initiator == NL80211_REGDOM_SET_BY_USER)
   reg_call_notifier(wiphy, lr);
 }

 if (!reg_dev_ignore_cell_hint(wiphy))
  reg_num_devs_support_basehint++;

 wiphy_update_regulatory(wiphy, lr->initiator);
 wiphy_all_share_dfs_chan_state(wiphy);
}
