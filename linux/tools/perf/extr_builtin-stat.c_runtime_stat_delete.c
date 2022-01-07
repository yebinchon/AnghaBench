
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_config {int stats_num; int * stats; } ;


 int runtime_stat__exit (int *) ;
 int zfree (int **) ;

__attribute__((used)) static void runtime_stat_delete(struct perf_stat_config *config)
{
 int i;

 if (!config->stats)
  return;

 for (i = 0; i < config->stats_num; i++)
  runtime_stat__exit(&config->stats[i]);

 zfree(&config->stats);
}
