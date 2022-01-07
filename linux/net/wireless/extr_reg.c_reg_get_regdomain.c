
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {scalar_t__ regd; } ;
struct regulatory_request {scalar_t__ initiator; } ;
struct ieee80211_regdomain {int dummy; } ;


 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ;
 scalar_t__ NL80211_REGDOM_SET_BY_USER ;
 struct ieee80211_regdomain const* get_cfg80211_regdom () ;
 struct regulatory_request* get_last_request () ;
 struct ieee80211_regdomain const* get_wiphy_regdom (struct wiphy*) ;

__attribute__((used)) static const struct ieee80211_regdomain *reg_get_regdomain(struct wiphy *wiphy)
{
 struct regulatory_request *lr = get_last_request();





 if (lr->initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE &&
     lr->initiator != NL80211_REGDOM_SET_BY_USER &&
     wiphy->regd)
  return get_wiphy_regdom(wiphy);

 return get_cfg80211_regdom();
}
