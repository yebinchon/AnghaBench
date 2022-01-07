
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;


 struct evsel* perf_evsel__newtp_idx (char const*,char const*,int ) ;

__attribute__((used)) static inline struct evsel *perf_evsel__newtp(const char *sys, const char *name)
{
 return perf_evsel__newtp_idx(sys, name, 0);
}
