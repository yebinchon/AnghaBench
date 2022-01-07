
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regulatory_flags; } ;
typedef struct ieee80211_regdomain const ieee80211_regdomain ;
struct cfg80211_registered_device {struct ieee80211_regdomain const* requested_regd; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct ieee80211_regdomain const*) ;
 int PTR_ERR (struct ieee80211_regdomain const*) ;
 int REGULATORY_WIPHY_SELF_MANAGED ;
 scalar_t__ WARN (int,char*) ;
 scalar_t__ WARN_ON (int) ;
 int is_valid_rd (struct ieee80211_regdomain const*) ;
 int kfree (struct ieee80211_regdomain const*) ;
 int print_regdomain_info (struct ieee80211_regdomain const*) ;
 struct ieee80211_regdomain const* reg_copy_regd (struct ieee80211_regdomain const*) ;
 int reg_requests_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

__attribute__((used)) static int __regulatory_set_wiphy_regd(struct wiphy *wiphy,
           struct ieee80211_regdomain *rd)
{
 const struct ieee80211_regdomain *regd;
 const struct ieee80211_regdomain *prev_regd;
 struct cfg80211_registered_device *rdev;

 if (WARN_ON(!wiphy || !rd))
  return -EINVAL;

 if (WARN(!(wiphy->regulatory_flags & REGULATORY_WIPHY_SELF_MANAGED),
   "wiphy should have REGULATORY_WIPHY_SELF_MANAGED\n"))
  return -EPERM;

 if (WARN(!is_valid_rd(rd), "Invalid regulatory domain detected\n")) {
  print_regdomain_info(rd);
  return -EINVAL;
 }

 regd = reg_copy_regd(rd);
 if (IS_ERR(regd))
  return PTR_ERR(regd);

 rdev = wiphy_to_rdev(wiphy);

 spin_lock(&reg_requests_lock);
 prev_regd = rdev->requested_regd;
 rdev->requested_regd = regd;
 spin_unlock(&reg_requests_lock);

 kfree(prev_regd);
 return 0;
}
