
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_config_set {int dummy; } ;


 int free (struct perf_config_set*) ;
 int perf_config_set__purge (struct perf_config_set*) ;

void perf_config_set__delete(struct perf_config_set *set)
{
 if (set == ((void*)0))
  return;

 perf_config_set__purge(set);
 free(set);
}
