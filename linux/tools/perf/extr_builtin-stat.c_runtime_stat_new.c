
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int dummy; } ;
struct perf_stat_config {int stats_num; int * stats; } ;


 int * calloc (int,int) ;
 int runtime_stat__init (int *) ;

__attribute__((used)) static int runtime_stat_new(struct perf_stat_config *config, int nthreads)
{
 int i;

 config->stats = calloc(nthreads, sizeof(struct runtime_stat));
 if (!config->stats)
  return -1;

 config->stats_num = nthreads;

 for (i = 0; i < nthreads; i++)
  runtime_stat__init(&config->stats[i]);

 return 0;
}
