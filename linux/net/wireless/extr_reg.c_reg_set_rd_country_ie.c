
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct regulatory_request {scalar_t__ intersect; int wiphy_idx; } ;
struct ieee80211_regdomain {int * alpha2; } ;


 int EINVAL ;
 int ENODEV ;
 int is_alpha2_set (int *) ;
 int is_an_alpha2 (int *) ;
 int is_unknown_alpha2 (int *) ;
 int is_valid_rd (struct ieee80211_regdomain const*) ;
 int pr_err (char*,int ,int ) ;
 int print_regdomain_info (struct ieee80211_regdomain const*) ;
 int reset_regdomains (int,struct ieee80211_regdomain const*) ;
 struct wiphy* wiphy_idx_to_wiphy (int ) ;

__attribute__((used)) static int reg_set_rd_country_ie(const struct ieee80211_regdomain *rd,
     struct regulatory_request *country_ie_request)
{
 struct wiphy *request_wiphy;

 if (!is_alpha2_set(rd->alpha2) && !is_an_alpha2(rd->alpha2) &&
     !is_unknown_alpha2(rd->alpha2))
  return -EINVAL;







 if (!is_valid_rd(rd)) {
  pr_err("Invalid regulatory domain detected: %c%c\n",
         rd->alpha2[0], rd->alpha2[1]);
  print_regdomain_info(rd);
  return -EINVAL;
 }

 request_wiphy = wiphy_idx_to_wiphy(country_ie_request->wiphy_idx);
 if (!request_wiphy)
  return -ENODEV;

 if (country_ie_request->intersect)
  return -EINVAL;

 reset_regdomains(0, rd);
 return 0;
}
