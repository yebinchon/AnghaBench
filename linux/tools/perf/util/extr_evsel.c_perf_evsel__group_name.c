
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {scalar_t__ group_name; } ;



const char *perf_evsel__group_name(struct evsel *evsel)
{
 return evsel->group_name ?: "anon group";
}
