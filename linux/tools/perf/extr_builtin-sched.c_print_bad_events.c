
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sched {int nr_unordered_timestamps; int nr_context_switch_bugs; scalar_t__ nr_lost_events; scalar_t__ nr_timestamps; scalar_t__ nr_events; int nr_lost_chunks; } ;


 int printf (char*,...) ;

__attribute__((used)) static void print_bad_events(struct perf_sched *sched)
{
 if (sched->nr_unordered_timestamps && sched->nr_timestamps) {
  printf("  INFO: %.3f%% unordered timestamps (%ld out of %ld)\n",
   (double)sched->nr_unordered_timestamps/(double)sched->nr_timestamps*100.0,
   sched->nr_unordered_timestamps, sched->nr_timestamps);
 }
 if (sched->nr_lost_events && sched->nr_events) {
  printf("  INFO: %.3f%% lost events (%ld out of %ld, in %ld chunks)\n",
   (double)sched->nr_lost_events/(double)sched->nr_events * 100.0,
   sched->nr_lost_events, sched->nr_events, sched->nr_lost_chunks);
 }
 if (sched->nr_context_switch_bugs && sched->nr_timestamps) {
  printf("  INFO: %.3f%% context switch bugs (%ld out of %ld)",
   (double)sched->nr_context_switch_bugs/(double)sched->nr_timestamps*100.0,
   sched->nr_context_switch_bugs, sched->nr_timestamps);
  if (sched->nr_lost_events)
   printf(" (due to lost events?)");
  printf("\n");
 }
}
