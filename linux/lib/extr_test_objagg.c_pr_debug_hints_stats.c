
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_stats {int dummy; } ;
struct objagg_hints {int dummy; } ;


 scalar_t__ IS_ERR (struct objagg_stats const*) ;
 int __pr_debug_stats (struct objagg_stats const*) ;
 struct objagg_stats* objagg_hints_stats_get (struct objagg_hints*) ;
 int objagg_stats_put (struct objagg_stats const*) ;

__attribute__((used)) static void pr_debug_hints_stats(struct objagg_hints *objagg_hints)
{
 const struct objagg_stats *stats;

 stats = objagg_hints_stats_get(objagg_hints);
 if (IS_ERR(stats))
  return;
 __pr_debug_stats(stats);
 objagg_stats_put(stats);
}
