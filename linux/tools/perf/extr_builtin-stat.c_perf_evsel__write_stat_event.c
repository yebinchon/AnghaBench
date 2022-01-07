
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct perf_sample_id {int id; } ;
struct perf_counts_values {int dummy; } ;
struct evsel {int dummy; } ;


 struct perf_sample_id* SID (struct evsel*,int ,int ) ;
 int perf_event__synthesize_stat (int *,int ,int ,int ,struct perf_counts_values*,int ,int *) ;
 int process_synthesized_event ;

__attribute__((used)) static int
perf_evsel__write_stat_event(struct evsel *counter, u32 cpu, u32 thread,
        struct perf_counts_values *count)
{
 struct perf_sample_id *sid = SID(counter, cpu, thread);

 return perf_event__synthesize_stat(((void*)0), cpu, thread, sid->id, count,
        process_synthesized_event, ((void*)0));
}
