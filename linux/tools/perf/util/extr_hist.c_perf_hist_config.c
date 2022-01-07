
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_filter_percentage (int *,char const*,int ) ;
 int strcmp (char const*,char*) ;

int perf_hist_config(const char *var, const char *value)
{
 if (!strcmp(var, "hist.percentage"))
  return parse_filter_percentage(((void*)0), value, 0);

 return 0;
}
