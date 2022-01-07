
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regulatory_flags; } ;
struct regulatory_request {char* alpha2; int initiator; int wiphy_idx; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NL80211_REGDOM_SET_BY_DRIVER ;
 int REGULATORY_CUSTOM_REG ;
 scalar_t__ WARN_ON (int) ;
 int get_wiphy_idx (struct wiphy*) ;
 struct regulatory_request* kzalloc (int,int ) ;
 int queue_regulatory_request (struct regulatory_request*) ;
 int reset_crda_timeouts () ;

int regulatory_hint(struct wiphy *wiphy, const char *alpha2)
{
 struct regulatory_request *request;

 if (WARN_ON(!alpha2 || !wiphy))
  return -EINVAL;

 wiphy->regulatory_flags &= ~REGULATORY_CUSTOM_REG;

 request = kzalloc(sizeof(struct regulatory_request), GFP_KERNEL);
 if (!request)
  return -ENOMEM;

 request->wiphy_idx = get_wiphy_idx(wiphy);

 request->alpha2[0] = alpha2[0];
 request->alpha2[1] = alpha2[1];
 request->initiator = NL80211_REGDOM_SET_BY_DRIVER;


 reset_crda_timeouts();

 queue_regulatory_request(request);

 return 0;
}
