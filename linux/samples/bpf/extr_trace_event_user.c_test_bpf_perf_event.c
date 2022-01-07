
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int freq; int config; int precise_ip; int sample_type; int type; int sample_freq; } ;


 int PERF_COUNT_HW_CACHE_BPU ;
 int PERF_COUNT_HW_CACHE_L1D ;
 int PERF_COUNT_HW_CACHE_OP_READ ;
 int PERF_COUNT_HW_CACHE_RESULT_ACCESS ;
 int PERF_COUNT_HW_CACHE_RESULT_MISS ;
 int PERF_COUNT_HW_CPU_CYCLES ;
 int PERF_COUNT_SW_CPU_CLOCK ;
 int PERF_SAMPLE_ADDR ;
 int PERF_TYPE_HARDWARE ;
 int PERF_TYPE_HW_CACHE ;
 int PERF_TYPE_RAW ;
 int PERF_TYPE_SOFTWARE ;
 int SAMPLE_FREQ ;
 int printf (char*) ;
 int test_perf_event_all_cpu (struct perf_event_attr*) ;
 int test_perf_event_task (struct perf_event_attr*) ;

__attribute__((used)) static void test_bpf_perf_event(void)
{
 struct perf_event_attr attr_type_hw = {
  .sample_freq = SAMPLE_FREQ,
  .freq = 1,
  .type = PERF_TYPE_HARDWARE,
  .config = PERF_COUNT_HW_CPU_CYCLES,
 };
 struct perf_event_attr attr_type_sw = {
  .sample_freq = SAMPLE_FREQ,
  .freq = 1,
  .type = PERF_TYPE_SOFTWARE,
  .config = PERF_COUNT_SW_CPU_CLOCK,
 };
 struct perf_event_attr attr_hw_cache_l1d = {
  .sample_freq = SAMPLE_FREQ,
  .freq = 1,
  .type = PERF_TYPE_HW_CACHE,
  .config =
   PERF_COUNT_HW_CACHE_L1D |
   (PERF_COUNT_HW_CACHE_OP_READ << 8) |
   (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16),
 };
 struct perf_event_attr attr_hw_cache_branch_miss = {
  .sample_freq = SAMPLE_FREQ,
  .freq = 1,
  .type = PERF_TYPE_HW_CACHE,
  .config =
   PERF_COUNT_HW_CACHE_BPU |
   (PERF_COUNT_HW_CACHE_OP_READ << 8) |
   (PERF_COUNT_HW_CACHE_RESULT_MISS << 16),
 };
 struct perf_event_attr attr_type_raw = {
  .sample_freq = SAMPLE_FREQ,
  .freq = 1,
  .type = PERF_TYPE_RAW,

  .config = 0xc0,
 };
 struct perf_event_attr attr_type_raw_lock_load = {
  .sample_freq = SAMPLE_FREQ,
  .freq = 1,
  .type = PERF_TYPE_RAW,

  .config = 0x21d0,

  .sample_type = PERF_SAMPLE_ADDR,

  .precise_ip = 2,
 };

 printf("Test HW_CPU_CYCLES\n");
 test_perf_event_all_cpu(&attr_type_hw);
 test_perf_event_task(&attr_type_hw);

 printf("Test SW_CPU_CLOCK\n");
 test_perf_event_all_cpu(&attr_type_sw);
 test_perf_event_task(&attr_type_sw);

 printf("Test HW_CACHE_L1D\n");
 test_perf_event_all_cpu(&attr_hw_cache_l1d);
 test_perf_event_task(&attr_hw_cache_l1d);

 printf("Test HW_CACHE_BPU\n");
 test_perf_event_all_cpu(&attr_hw_cache_branch_miss);
 test_perf_event_task(&attr_hw_cache_branch_miss);

 printf("Test Instruction Retired\n");
 test_perf_event_all_cpu(&attr_type_raw);
 test_perf_event_task(&attr_type_raw);

 printf("Test Lock Load\n");
 test_perf_event_all_cpu(&attr_type_raw_lock_load);
 test_perf_event_task(&attr_type_raw_lock_load);

 printf("*** PASS ***\n");
}
