
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regd; } ;
struct regulatory_request {int intersect; int processed; } ;
struct ieee80211_regdomain {int dummy; } ;
typedef enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;


 int IS_ERR (struct ieee80211_regdomain const*) ;




 int __reg_process_hint_driver (struct regulatory_request*) ;
 int get_cfg80211_regdom () ;
 struct ieee80211_regdomain* get_wiphy_regdom (struct wiphy*) ;
 int nl80211_send_reg_change_event (struct regulatory_request*) ;
 int rcu_assign_pointer (int ,struct ieee80211_regdomain const*) ;
 int rcu_free_regdom (struct ieee80211_regdomain const*) ;
 struct ieee80211_regdomain* reg_copy_regd (int ) ;
 scalar_t__ reg_query_database (struct regulatory_request*) ;
 int reg_set_request_processed () ;
 int reg_update_last_request (struct regulatory_request*) ;

__attribute__((used)) static enum reg_request_treatment
reg_process_hint_driver(struct wiphy *wiphy,
   struct regulatory_request *driver_request)
{
 const struct ieee80211_regdomain *regd, *tmp;
 enum reg_request_treatment treatment;

 treatment = __reg_process_hint_driver(driver_request);

 switch (treatment) {
 case 128:
  break;
 case 130:
  return 130;
 case 129:
 case 131:
  regd = reg_copy_regd(get_cfg80211_regdom());
  if (IS_ERR(regd))
   return 130;

  tmp = get_wiphy_regdom(wiphy);
  rcu_assign_pointer(wiphy->regd, regd);
  rcu_free_regdom(tmp);
 }


 driver_request->intersect = treatment == 129;
 driver_request->processed = 0;






 if (treatment == 131) {
  nl80211_send_reg_change_event(driver_request);
  reg_update_last_request(driver_request);
  reg_set_request_processed();
  return 131;
 }

 if (reg_query_database(driver_request)) {
  reg_update_last_request(driver_request);
  return 128;
 }

 return 130;
}
