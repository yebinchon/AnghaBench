
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu_alias {int terms; int metric_name; int metric_expr; int str; int topic; int long_desc; int desc; int name; } ;


 int free (struct perf_pmu_alias*) ;
 int parse_events_terms__purge (int *) ;
 int zfree (int *) ;

__attribute__((used)) static void perf_pmu_free_alias(struct perf_pmu_alias *newalias)
{
 zfree(&newalias->name);
 zfree(&newalias->desc);
 zfree(&newalias->long_desc);
 zfree(&newalias->topic);
 zfree(&newalias->str);
 zfree(&newalias->metric_expr);
 zfree(&newalias->metric_name);
 parse_events_terms__purge(&newalias->terms);
 free(newalias);
}
