
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_stats {scalar_t__ stats_info_count; } ;
struct objagg {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct objagg_stats const*) ;
 int PTR_ERR (struct objagg_stats const*) ;
 struct objagg_stats* objagg_stats_get (struct objagg*) ;
 int objagg_stats_put (struct objagg_stats const*) ;
 int pr_err (char*) ;

__attribute__((used)) static int check_stats_zero(struct objagg *objagg)
{
 const struct objagg_stats *stats;
 int err = 0;

 stats = objagg_stats_get(objagg);
 if (IS_ERR(stats))
  return PTR_ERR(stats);

 if (stats->stats_info_count != 0) {
  pr_err("Stats: Object count is not zero while it should be\n");
  err = -EINVAL;
 }

 objagg_stats_put(stats);
 return err;
}
