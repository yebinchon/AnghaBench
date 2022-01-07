
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_opts {int dummy; } ;
struct evsel {int dummy; } ;
struct callchain_param {scalar_t__ enabled; } ;


 void __perf_evsel__config_callchain (struct evsel*,struct record_opts*,struct callchain_param*) ;

void perf_evsel__config_callchain(struct evsel *evsel,
      struct record_opts *opts,
      struct callchain_param *param)
{
 if (param->enabled)
  return __perf_evsel__config_callchain(evsel, opts, param);
}
