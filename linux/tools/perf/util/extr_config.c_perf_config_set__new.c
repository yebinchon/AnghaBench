
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_config_set {int sections; } ;


 int INIT_LIST_HEAD (int *) ;
 int perf_config_set__init (struct perf_config_set*) ;
 struct perf_config_set* zalloc (int) ;

struct perf_config_set *perf_config_set__new(void)
{
 struct perf_config_set *set = zalloc(sizeof(*set));

 if (set) {
  INIT_LIST_HEAD(&set->sections);
  perf_config_set__init(set);
 }

 return set;
}
