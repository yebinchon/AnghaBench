
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regd; } ;
struct regulatory_request {int intersect; int wiphy_idx; } ;
struct ieee80211_regdomain {int * alpha2; } ;


 int EALREADY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct ieee80211_regdomain const*) ;
 int PTR_ERR (struct ieee80211_regdomain const*) ;
 int get_cfg80211_regdom () ;
 struct ieee80211_regdomain* get_wiphy_regdom (struct wiphy*) ;
 int is_valid_rd (struct ieee80211_regdomain const*) ;
 scalar_t__ is_world_regdom (int *) ;
 int pr_err (char*,int ,int ) ;
 int print_regdomain_info (struct ieee80211_regdomain const*) ;
 int rcu_assign_pointer (int ,struct ieee80211_regdomain const*) ;
 int rcu_free_regdom (struct ieee80211_regdomain const*) ;
 struct ieee80211_regdomain* reg_copy_regd (struct ieee80211_regdomain const*) ;
 int regdom_changes (int *) ;
 struct ieee80211_regdomain* regdom_intersect (struct ieee80211_regdomain const*,int ) ;
 int reset_regdomains (int,struct ieee80211_regdomain const*) ;
 struct wiphy* wiphy_idx_to_wiphy (int ) ;

__attribute__((used)) static int reg_set_rd_driver(const struct ieee80211_regdomain *rd,
        struct regulatory_request *driver_request)
{
 const struct ieee80211_regdomain *regd;
 const struct ieee80211_regdomain *intersected_rd = ((void*)0);
 const struct ieee80211_regdomain *tmp;
 struct wiphy *request_wiphy;

 if (is_world_regdom(rd->alpha2))
  return -EINVAL;

 if (!regdom_changes(rd->alpha2))
  return -EALREADY;

 if (!is_valid_rd(rd)) {
  pr_err("Invalid regulatory domain detected: %c%c\n",
         rd->alpha2[0], rd->alpha2[1]);
  print_regdomain_info(rd);
  return -EINVAL;
 }

 request_wiphy = wiphy_idx_to_wiphy(driver_request->wiphy_idx);
 if (!request_wiphy)
  return -ENODEV;

 if (!driver_request->intersect) {
  if (request_wiphy->regd)
   return -EALREADY;

  regd = reg_copy_regd(rd);
  if (IS_ERR(regd))
   return PTR_ERR(regd);

  rcu_assign_pointer(request_wiphy->regd, regd);
  reset_regdomains(0, rd);
  return 0;
 }

 intersected_rd = regdom_intersect(rd, get_cfg80211_regdom());
 if (!intersected_rd)
  return -EINVAL;






 tmp = get_wiphy_regdom(request_wiphy);
 rcu_assign_pointer(request_wiphy->regd, rd);
 rcu_free_regdom(tmp);

 rd = ((void*)0);

 reset_regdomains(0, intersected_rd);

 return 0;
}
