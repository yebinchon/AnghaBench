
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_stats {double time_in_state; struct cpufreq_stats* next; int frequency; } ;


 struct cpufreq_stats* cpufreq_get_stats (unsigned int,unsigned long long*) ;
 unsigned long cpufreq_get_transitions (unsigned int) ;
 int cpufreq_put_stats (struct cpufreq_stats*) ;
 int print_speed (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int get_freq_stats(unsigned int cpu, unsigned int human)
{
 unsigned long total_trans = cpufreq_get_transitions(cpu);
 unsigned long long total_time;
 struct cpufreq_stats *stats = cpufreq_get_stats(cpu, &total_time);
 while (stats) {
  if (human) {
   print_speed(stats->frequency);
   printf(":%.2f%%",
    (100.0 * stats->time_in_state) / total_time);
  } else
   printf("%lu:%llu",
    stats->frequency, stats->time_in_state);
  stats = stats->next;
  if (stats)
   printf(", ");
 }
 cpufreq_put_stats(stats);
 if (total_trans)
  printf("  (%lu)\n", total_trans);
 return 0;
}
