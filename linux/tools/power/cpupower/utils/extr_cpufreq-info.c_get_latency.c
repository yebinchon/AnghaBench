
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long UINT_MAX ;
 char* _ (char*) ;
 unsigned long cpufreq_get_transition_latency (unsigned int) ;
 int print_duration (unsigned long) ;
 int printf (char*,...) ;

__attribute__((used)) static int get_latency(unsigned int cpu, unsigned int human)
{
 unsigned long latency = cpufreq_get_transition_latency(cpu);

 printf(_("  maximum transition latency: "));
 if (!latency || latency == UINT_MAX) {
  printf(_(" Cannot determine or is not supported.\n"));
  return -EINVAL;
 }

 if (human) {
  print_duration(latency);
  printf("\n");
 } else
  printf("%lu\n", latency);
 return 0;
}
