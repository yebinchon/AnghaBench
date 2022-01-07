
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;


 int perf_evsel__append_filter (struct evsel*,char*,char const*) ;

int perf_evsel__append_tp_filter(struct evsel *evsel, const char *filter)
{
 return perf_evsel__append_filter(evsel, "(%s) && (%s)", filter);
}
