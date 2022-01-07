
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* _ (char*) ;
 char* cpufreq_get_driver (unsigned int) ;
 int cpufreq_put_driver (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static int get_driver(unsigned int cpu)
{
 char *driver = cpufreq_get_driver(cpu);
 if (!driver) {
  printf(_("  no or unknown cpufreq driver is active on this CPU\n"));
  return -EINVAL;
 }
 printf("  driver: %s\n", driver);
 cpufreq_put_driver(driver);
 return 0;
}
