
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_frequencies {int frequency; struct cpufreq_frequencies* next; } ;
struct TYPE_2__ {scalar_t__ vendor; } ;


 scalar_t__ X86_VENDOR_AMD ;
 scalar_t__ X86_VENDOR_HYGON ;
 scalar_t__ X86_VENDOR_INTEL ;
 char* _ (char*) ;
 struct cpufreq_frequencies* cpufreq_get_frequencies (char*,unsigned int) ;
 int cpufreq_put_frequencies (struct cpufreq_frequencies*) ;
 TYPE_1__ cpupower_cpu_info ;
 int get_boost_mode_x86 (unsigned int) ;
 int print_speed (int ) ;
 int printf (char*) ;

__attribute__((used)) static int get_boost_mode(unsigned int cpu)
{
 struct cpufreq_frequencies *freqs;

 if (cpupower_cpu_info.vendor == X86_VENDOR_AMD ||
     cpupower_cpu_info.vendor == X86_VENDOR_HYGON ||
     cpupower_cpu_info.vendor == X86_VENDOR_INTEL)
  return get_boost_mode_x86(cpu);

 freqs = cpufreq_get_frequencies("boost", cpu);
 if (freqs) {
  printf(_("  boost frequency steps: "));
  while (freqs->next) {
   print_speed(freqs->frequency);
   printf(", ");
   freqs = freqs->next;
  }
  print_speed(freqs->frequency);
  printf("\n");
  cpufreq_put_frequencies(freqs);
 }

 return 0;
}
