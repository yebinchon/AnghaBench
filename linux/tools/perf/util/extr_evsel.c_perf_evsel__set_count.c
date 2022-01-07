
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct perf_counts_values {void* run; void* ena; void* val; } ;
struct evsel {int counts; } ;


 struct perf_counts_values* perf_counts (int ,int,int) ;
 int perf_counts__set_loaded (int ,int,int,int) ;

__attribute__((used)) static void
perf_evsel__set_count(struct evsel *counter, int cpu, int thread,
        u64 val, u64 ena, u64 run)
{
 struct perf_counts_values *count;

 count = perf_counts(counter->counts, cpu, thread);

 count->val = val;
 count->ena = ena;
 count->run = run;

 perf_counts__set_loaded(counter->counts, cpu, thread, 1);
}
