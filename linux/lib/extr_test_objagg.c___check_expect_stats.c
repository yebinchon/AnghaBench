
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_stats {int stats_info_count; int * stats_info; } ;
struct expect_stats {int info_count; int * info; } ;


 int EINVAL ;
 int check_expect_stats_key_id (int *,int *,char const**) ;
 int check_expect_stats_neigh (struct objagg_stats const*,struct expect_stats const*,int) ;
 int check_expect_stats_nums (int *,int *,char const**) ;

__attribute__((used)) static int __check_expect_stats(const struct objagg_stats *stats,
    const struct expect_stats *expect_stats,
    const char **errmsg)
{
 int i;
 int err;

 if (stats->stats_info_count != expect_stats->info_count) {
  *errmsg = "Unexpected object count";
  return -EINVAL;
 }

 for (i = 0; i < stats->stats_info_count; i++) {
  err = check_expect_stats_nums(&stats->stats_info[i],
           &expect_stats->info[i], errmsg);
  if (err)
   return err;
  err = check_expect_stats_key_id(&stats->stats_info[i],
      &expect_stats->info[i], errmsg);
  if (err) {



   err = check_expect_stats_neigh(stats, expect_stats, i);
   if (err)
    return err;
  }
 }
 return 0;
}
