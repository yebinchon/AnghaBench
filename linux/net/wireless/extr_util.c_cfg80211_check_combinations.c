
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct iface_combination_params {int dummy; } ;


 int EBUSY ;
 int cfg80211_iter_combinations (struct wiphy*,struct iface_combination_params*,int ,int*) ;
 int cfg80211_iter_sum_ifcombs ;

int cfg80211_check_combinations(struct wiphy *wiphy,
    struct iface_combination_params *params)
{
 int err, num = 0;

 err = cfg80211_iter_combinations(wiphy, params,
      cfg80211_iter_sum_ifcombs, &num);
 if (err)
  return err;
 if (num == 0)
  return -EBUSY;

 return 0;
}
