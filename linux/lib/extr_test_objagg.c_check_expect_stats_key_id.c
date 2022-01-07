
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj_stats_info {int objagg_obj; } ;
struct expect_stats_info {scalar_t__ key_id; } ;


 int EINVAL ;
 scalar_t__ obj_to_key_id (int ) ;

__attribute__((used)) static int
check_expect_stats_key_id(const struct objagg_obj_stats_info *stats_info,
     const struct expect_stats_info *expect_stats_info,
     const char **errmsg)
{
 if (obj_to_key_id(stats_info->objagg_obj) !=
     expect_stats_info->key_id) {
  if (errmsg)
   *errmsg = "incorrect key id";
  return -EINVAL;
 }
 return 0;
}
