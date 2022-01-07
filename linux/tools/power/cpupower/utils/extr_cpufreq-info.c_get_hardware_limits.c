
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* _ (char*) ;
 scalar_t__ cpufreq_get_hardware_limits (unsigned int,unsigned long*,unsigned long*) ;
 int print_speed (unsigned long) ;
 int printf (char*,...) ;

__attribute__((used)) static int get_hardware_limits(unsigned int cpu, unsigned int human)
{
 unsigned long min, max;

 if (cpufreq_get_hardware_limits(cpu, &min, &max)) {
  printf(_("Not Available\n"));
  return -EINVAL;
 }

 if (human) {
  printf(_("  hardware limits: "));
  print_speed(min);
  printf(" - ");
  print_speed(max);
  printf("\n");
 } else {
  printf("%lu %lu\n", min, max);
 }
 return 0;
}
