
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_stats {int dummy; } ;
struct objagg {int dummy; } ;
struct expect_stats {int dummy; } ;


 scalar_t__ IS_ERR (struct objagg_stats const*) ;
 int PTR_ERR (struct objagg_stats const*) ;
 int __check_expect_stats (struct objagg_stats const*,struct expect_stats const*,char const**) ;
 struct objagg_stats* objagg_stats_get (struct objagg*) ;
 int objagg_stats_put (struct objagg_stats const*) ;

__attribute__((used)) static int check_expect_stats(struct objagg *objagg,
         const struct expect_stats *expect_stats,
         const char **errmsg)
{
 const struct objagg_stats *stats;
 int err;

 stats = objagg_stats_get(objagg);
 if (IS_ERR(stats)) {
  *errmsg = "objagg_stats_get() failed.";
  return PTR_ERR(stats);
 }
 err = __check_expect_stats(stats, expect_stats, errmsg);
 objagg_stats_put(stats);
 return err;
}
