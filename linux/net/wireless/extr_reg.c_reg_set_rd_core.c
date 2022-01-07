
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int alpha2; } ;


 int EINVAL ;
 int is_world_regdom (int ) ;
 int update_world_regdomain (struct ieee80211_regdomain const*) ;

__attribute__((used)) static int reg_set_rd_core(const struct ieee80211_regdomain *rd)
{
 if (!is_world_regdom(rd->alpha2))
  return -EINVAL;
 update_world_regdomain(rd);
 return 0;
}
