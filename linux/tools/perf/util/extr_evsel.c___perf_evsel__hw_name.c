
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;


 size_t PERF_COUNT_HW_MAX ;
 char const** perf_evsel__hw_names ;

__attribute__((used)) static const char *__perf_evsel__hw_name(u64 config)
{
 if (config < PERF_COUNT_HW_MAX && perf_evsel__hw_names[config])
  return perf_evsel__hw_names[config];

 return "unknown-hardware";
}
