
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int intersect; } ;
struct ieee80211_regdomain {int * alpha2; } ;


 int EALREADY ;
 int EINVAL ;
 int get_cfg80211_regdom () ;
 int is_valid_rd (struct ieee80211_regdomain const*) ;
 int kfree (struct ieee80211_regdomain const*) ;
 int pr_err (char*,int ,int ) ;
 int print_regdomain_info (struct ieee80211_regdomain const*) ;
 int regdom_changes (int *) ;
 struct ieee80211_regdomain* regdom_intersect (struct ieee80211_regdomain const*,int ) ;
 int reset_regdomains (int,struct ieee80211_regdomain const*) ;

__attribute__((used)) static int reg_set_rd_user(const struct ieee80211_regdomain *rd,
      struct regulatory_request *user_request)
{
 const struct ieee80211_regdomain *intersected_rd = ((void*)0);

 if (!regdom_changes(rd->alpha2))
  return -EALREADY;

 if (!is_valid_rd(rd)) {
  pr_err("Invalid regulatory domain detected: %c%c\n",
         rd->alpha2[0], rd->alpha2[1]);
  print_regdomain_info(rd);
  return -EINVAL;
 }

 if (!user_request->intersect) {
  reset_regdomains(0, rd);
  return 0;
 }

 intersected_rd = regdom_intersect(rd, get_cfg80211_regdom());
 if (!intersected_rd)
  return -EINVAL;

 kfree(rd);
 rd = ((void*)0);
 reset_regdomains(0, intersected_rd);

 return 0;
}
