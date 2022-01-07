
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct report {double min_percent; int queue_size; } ;
struct TYPE_4__ {double min_percent; } ;
struct TYPE_3__ {void* cumulate_callchain; void* event_group; } ;


 TYPE_2__ callchain_param ;
 int default_sort_order ;
 void* perf_config_bool (char const*,char const*) ;
 int perf_config_u64 (int *,char const*,char const*) ;
 int strcmp (char const*,char*) ;
 int strdup (char const*) ;
 double strtof (char const*,int *) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int report__config(const char *var, const char *value, void *cb)
{
 struct report *rep = cb;

 if (!strcmp(var, "report.group")) {
  symbol_conf.event_group = perf_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "report.percent-limit")) {
  double pcnt = strtof(value, ((void*)0));

  rep->min_percent = pcnt;
  callchain_param.min_percent = pcnt;
  return 0;
 }
 if (!strcmp(var, "report.children")) {
  symbol_conf.cumulate_callchain = perf_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "report.queue-size"))
  return perf_config_u64(&rep->queue_size, var, value);

 if (!strcmp(var, "report.sort_order")) {
  default_sort_order = strdup(value);
  return 0;
 }

 return 0;
}
