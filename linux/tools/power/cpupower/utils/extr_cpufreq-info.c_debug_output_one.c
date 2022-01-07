
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequencies {int frequency; struct cpufreq_frequencies* next; } ;


 char* _ (char*) ;
 struct cpufreq_frequencies* cpufreq_get_frequencies (char*,unsigned int) ;
 int cpufreq_put_frequencies (struct cpufreq_frequencies*) ;
 int get_affected_cpus (unsigned int) ;
 int get_available_governors (unsigned int) ;
 int get_boost_mode (unsigned int) ;
 int get_driver (unsigned int) ;
 scalar_t__ get_freq_hardware (unsigned int,int) ;
 int get_freq_kernel (unsigned int,int) ;
 int get_hardware_limits (unsigned int,int) ;
 int get_latency (unsigned int,int) ;
 int get_policy (unsigned int) ;
 int get_related_cpus (unsigned int) ;
 int print_speed (int ) ;
 int printf (char*) ;

__attribute__((used)) static void debug_output_one(unsigned int cpu)
{
 struct cpufreq_frequencies *freqs;

 get_driver(cpu);
 get_related_cpus(cpu);
 get_affected_cpus(cpu);
 get_latency(cpu, 1);
 get_hardware_limits(cpu, 1);

 freqs = cpufreq_get_frequencies("available", cpu);
 if (freqs) {
  printf(_("  available frequency steps:  "));
  while (freqs->next) {
   print_speed(freqs->frequency);
   printf(", ");
   freqs = freqs->next;
  }
  print_speed(freqs->frequency);
  printf("\n");
  cpufreq_put_frequencies(freqs);
 }

 get_available_governors(cpu);
 get_policy(cpu);
 if (get_freq_hardware(cpu, 1) < 0)
  get_freq_kernel(cpu, 1);
 get_boost_mode(cpu);
}
