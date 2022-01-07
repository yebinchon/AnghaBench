
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_stats {int dummy; } ;


 int kfree (struct objagg_stats const*) ;

void objagg_stats_put(const struct objagg_stats *objagg_stats)
{
 kfree(objagg_stats);
}
