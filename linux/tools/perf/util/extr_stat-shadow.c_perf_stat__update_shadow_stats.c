
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct saved_value {int metric_other; int metric_total; int stats; } ;
struct runtime_stat {int dummy; } ;
struct evsel {struct evsel* metric_leader; scalar_t__ collect_stat; int scale; } ;


 int APERF ;
 int CYCLES_IN_TX ;
 int ELISION_START ;
 int HARDWARE ;
 int HW_BRANCH_INSTRUCTIONS ;
 int HW_CACHE ;
 int HW_CACHE_DTLB ;
 int HW_CACHE_ITLB ;
 int HW_CACHE_L1D ;
 int HW_CACHE_L1I ;
 int HW_CACHE_LL ;
 int HW_CACHE_REFERENCES ;
 int HW_CPU_CYCLES ;
 int HW_STALLED_CYCLES_BACKEND ;
 int HW_STALLED_CYCLES_FRONTEND ;
 int SMI_NUM ;
 int STAT_APERF ;
 int STAT_BRANCHES ;
 int STAT_CACHEREFS ;
 int STAT_CYCLES ;
 int STAT_CYCLES_IN_TX ;
 int STAT_DTLB_CACHE ;
 int STAT_ELISION ;
 int STAT_ITLB_CACHE ;
 int STAT_L1_DCACHE ;
 int STAT_L1_ICACHE ;
 int STAT_LL_CACHE ;
 int STAT_NONE ;
 int STAT_NSECS ;
 int STAT_SMI_NUM ;
 int STAT_STALLED_CYCLES_BACK ;
 int STAT_STALLED_CYCLES_FRONT ;
 int STAT_TOPDOWN_FETCH_BUBBLES ;
 int STAT_TOPDOWN_RECOVERY_BUBBLES ;
 int STAT_TOPDOWN_SLOTS_ISSUED ;
 int STAT_TOPDOWN_SLOTS_RETIRED ;
 int STAT_TOPDOWN_TOTAL_SLOTS ;
 int STAT_TRANSACTION ;
 int TOPDOWN_FETCH_BUBBLES ;
 int TOPDOWN_RECOVERY_BUBBLES ;
 int TOPDOWN_SLOTS_ISSUED ;
 int TOPDOWN_SLOTS_RETIRED ;
 int TOPDOWN_TOTAL_SLOTS ;
 int TRANSACTION_START ;
 int evsel_context (struct evsel*) ;
 scalar_t__ perf_evsel__is_clock (struct evsel*) ;
 scalar_t__ perf_evsel__match (struct evsel*,int ,int ) ;
 scalar_t__ perf_stat_evsel__is (struct evsel*,int ) ;
 struct saved_value* saved_value_lookup (struct evsel*,int,int,int ,int ,struct runtime_stat*) ;
 int update_runtime_stat (struct runtime_stat*,int ,int,int,int ) ;
 int update_stats (int *,int ) ;

void perf_stat__update_shadow_stats(struct evsel *counter, u64 count,
        int cpu, struct runtime_stat *st)
{
 int ctx = evsel_context(counter);
 u64 count_ns = count;
 struct saved_value *v;

 count *= counter->scale;

 if (perf_evsel__is_clock(counter))
  update_runtime_stat(st, STAT_NSECS, 0, cpu, count_ns);
 else if (perf_evsel__match(counter, HARDWARE, HW_CPU_CYCLES))
  update_runtime_stat(st, STAT_CYCLES, ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, CYCLES_IN_TX))
  update_runtime_stat(st, STAT_CYCLES_IN_TX, ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, TRANSACTION_START))
  update_runtime_stat(st, STAT_TRANSACTION, ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, ELISION_START))
  update_runtime_stat(st, STAT_ELISION, ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, TOPDOWN_TOTAL_SLOTS))
  update_runtime_stat(st, STAT_TOPDOWN_TOTAL_SLOTS,
        ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, TOPDOWN_SLOTS_ISSUED))
  update_runtime_stat(st, STAT_TOPDOWN_SLOTS_ISSUED,
        ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, TOPDOWN_SLOTS_RETIRED))
  update_runtime_stat(st, STAT_TOPDOWN_SLOTS_RETIRED,
        ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, TOPDOWN_FETCH_BUBBLES))
  update_runtime_stat(st, STAT_TOPDOWN_FETCH_BUBBLES,
        ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, TOPDOWN_RECOVERY_BUBBLES))
  update_runtime_stat(st, STAT_TOPDOWN_RECOVERY_BUBBLES,
        ctx, cpu, count);
 else if (perf_evsel__match(counter, HARDWARE, HW_STALLED_CYCLES_FRONTEND))
  update_runtime_stat(st, STAT_STALLED_CYCLES_FRONT,
        ctx, cpu, count);
 else if (perf_evsel__match(counter, HARDWARE, HW_STALLED_CYCLES_BACKEND))
  update_runtime_stat(st, STAT_STALLED_CYCLES_BACK,
        ctx, cpu, count);
 else if (perf_evsel__match(counter, HARDWARE, HW_BRANCH_INSTRUCTIONS))
  update_runtime_stat(st, STAT_BRANCHES, ctx, cpu, count);
 else if (perf_evsel__match(counter, HARDWARE, HW_CACHE_REFERENCES))
  update_runtime_stat(st, STAT_CACHEREFS, ctx, cpu, count);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_L1D))
  update_runtime_stat(st, STAT_L1_DCACHE, ctx, cpu, count);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_L1I))
  update_runtime_stat(st, STAT_L1_ICACHE, ctx, cpu, count);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_LL))
  update_runtime_stat(st, STAT_LL_CACHE, ctx, cpu, count);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_DTLB))
  update_runtime_stat(st, STAT_DTLB_CACHE, ctx, cpu, count);
 else if (perf_evsel__match(counter, HW_CACHE, HW_CACHE_ITLB))
  update_runtime_stat(st, STAT_ITLB_CACHE, ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, SMI_NUM))
  update_runtime_stat(st, STAT_SMI_NUM, ctx, cpu, count);
 else if (perf_stat_evsel__is(counter, APERF))
  update_runtime_stat(st, STAT_APERF, ctx, cpu, count);

 if (counter->collect_stat) {
  v = saved_value_lookup(counter, cpu, 1, STAT_NONE, 0, st);
  update_stats(&v->stats, count);
  if (counter->metric_leader)
   v->metric_total += count;
 } else if (counter->metric_leader) {
  v = saved_value_lookup(counter->metric_leader,
           cpu, 1, STAT_NONE, 0, st);
  v->metric_total += count;
  v->metric_other++;
 }
}
