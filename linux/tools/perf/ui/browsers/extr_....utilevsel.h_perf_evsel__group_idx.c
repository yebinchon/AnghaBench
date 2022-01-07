
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evsel {int idx; TYPE_1__* leader; } ;
struct TYPE_2__ {int idx; } ;



__attribute__((used)) static inline int perf_evsel__group_idx(struct evsel *evsel)
{
 return evsel->idx - evsel->leader->idx;
}
