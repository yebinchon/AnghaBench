
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {struct evsel const* leader; } ;



__attribute__((used)) static inline bool perf_evsel__is_group_leader(const struct evsel *evsel)
{
 return evsel->leader == evsel;
}
