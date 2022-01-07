
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int dummy; } ;


 int ASSERT_RTNL () ;
 int cfg80211_regdomain ;
 struct ieee80211_regdomain const* cfg80211_world_regdom ;
 int core_request_world ;
 struct ieee80211_regdomain* get_cfg80211_regdom () ;
 int rcu_assign_pointer (int ,struct ieee80211_regdomain const*) ;
 int rcu_free_regdom (struct ieee80211_regdomain const*) ;
 int reg_update_last_request (int *) ;
 struct ieee80211_regdomain const world_regdom ;

__attribute__((used)) static void reset_regdomains(bool full_reset,
        const struct ieee80211_regdomain *new_regdom)
{
 const struct ieee80211_regdomain *r;

 ASSERT_RTNL();

 r = get_cfg80211_regdom();


 if (r == cfg80211_world_regdom)
  r = ((void*)0);
 if (cfg80211_world_regdom == &world_regdom)
  cfg80211_world_regdom = ((void*)0);
 if (r == &world_regdom)
  r = ((void*)0);

 rcu_free_regdom(r);
 rcu_free_regdom(cfg80211_world_regdom);

 cfg80211_world_regdom = &world_regdom;
 rcu_assign_pointer(cfg80211_regdomain, new_regdom);

 if (!full_reset)
  return;

 reg_update_last_request(&core_request_world);
}
