
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct evsel {int dummy; } ;


 struct evsel* perf_evsel__new_idx (struct perf_event_attr*,int ) ;

__attribute__((used)) static inline struct evsel *evsel__new(struct perf_event_attr *attr)
{
 return perf_evsel__new_idx(attr, 0);
}
