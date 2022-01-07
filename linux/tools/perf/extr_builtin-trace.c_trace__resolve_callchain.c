
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace {int max_stack; int host; } ;
struct perf_sample {int dummy; } ;
struct TYPE_3__ {int sample_max_stack; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct callchain_cursor {int dummy; } ;
struct addr_location {int thread; } ;


 int addr_location__put (struct addr_location*) ;
 scalar_t__ machine__resolve (int ,struct addr_location*,struct perf_sample*) ;
 int thread__resolve_callchain (int ,struct callchain_cursor*,struct evsel*,struct perf_sample*,int *,int *,int) ;

__attribute__((used)) static int trace__resolve_callchain(struct trace *trace, struct evsel *evsel,
        struct perf_sample *sample,
        struct callchain_cursor *cursor)
{
 struct addr_location al;
 int max_stack = evsel->core.attr.sample_max_stack ?
   evsel->core.attr.sample_max_stack :
   trace->max_stack;
 int err;

 if (machine__resolve(trace->host, &al, sample) < 0)
  return -1;

 err = thread__resolve_callchain(al.thread, cursor, evsel, sample, ((void*)0), ((void*)0), max_stack);
 addr_location__put(&al);
 return err;
}
