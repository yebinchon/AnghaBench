
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int sample_period; int config; int type; } ;


 int BPF_PROG_TYPE_PERF_EVENT ;
 int PERF_COUNT_SW_CPU_CLOCK ;
 int PERF_TYPE_SOFTWARE ;
 int test_send_signal_common (struct perf_event_attr*,int ,char*) ;

__attribute__((used)) static void test_send_signal_perf(void)
{
 struct perf_event_attr attr = {
  .sample_period = 1,
  .type = PERF_TYPE_SOFTWARE,
  .config = PERF_COUNT_SW_CPU_CLOCK,
 };

 test_send_signal_common(&attr, BPF_PROG_TYPE_PERF_EVENT,
    "perf_sw_event");
}
