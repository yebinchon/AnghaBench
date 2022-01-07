
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int read_format; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 int PERF_FORMAT_GROUP ;
 int perf_evsel__read_group (struct evsel*,int,int) ;
 int perf_evsel__read_one (struct evsel*,int,int) ;

int perf_evsel__read_counter(struct evsel *evsel, int cpu, int thread)
{
 u64 read_format = evsel->core.attr.read_format;

 if (read_format & PERF_FORMAT_GROUP)
  return perf_evsel__read_group(evsel, cpu, thread);
 else
  return perf_evsel__read_one(evsel, cpu, thread);
}
