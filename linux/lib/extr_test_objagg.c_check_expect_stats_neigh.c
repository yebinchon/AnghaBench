
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_stats {int stats_info_count; int * stats_info; } ;
struct expect_stats {int * info; } ;


 int EINVAL ;
 int check_expect_stats_key_id (int *,int *,int *) ;
 int check_expect_stats_nums (int *,int *,int *) ;

__attribute__((used)) static int check_expect_stats_neigh(const struct objagg_stats *stats,
        const struct expect_stats *expect_stats,
        int pos)
{
 int i;
 int err;

 for (i = pos - 1; i >= 0; i--) {
  err = check_expect_stats_nums(&stats->stats_info[i],
           &expect_stats->info[pos], ((void*)0));
  if (err)
   break;
  err = check_expect_stats_key_id(&stats->stats_info[i],
      &expect_stats->info[pos], ((void*)0));
  if (!err)
   return 0;
 }
 for (i = pos + 1; i < stats->stats_info_count; i++) {
  err = check_expect_stats_nums(&stats->stats_info[i],
           &expect_stats->info[pos], ((void*)0));
  if (err)
   break;
  err = check_expect_stats_key_id(&stats->stats_info[i],
      &expect_stats->info[pos], ((void*)0));
  if (!err)
   return 0;
 }
 return -EINVAL;
}
