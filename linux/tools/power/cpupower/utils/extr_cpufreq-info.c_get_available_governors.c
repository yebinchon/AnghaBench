
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_available_governors {char* governor; struct cpufreq_available_governors* next; } ;


 int EINVAL ;
 char* _ (char*) ;
 struct cpufreq_available_governors* cpufreq_get_available_governors (unsigned int) ;
 int cpufreq_put_available_governors (struct cpufreq_available_governors*) ;
 int printf (char*,...) ;

__attribute__((used)) static int get_available_governors(unsigned int cpu)
{
 struct cpufreq_available_governors *governors =
  cpufreq_get_available_governors(cpu);

 printf(_("  available cpufreq governors: "));
 if (!governors) {
  printf(_("Not Available\n"));
  return -EINVAL;
 }

 while (governors->next) {
  printf("%s ", governors->governor);
  governors = governors->next;
 }
 printf("%s\n", governors->governor);
 cpufreq_put_available_governors(governors);
 return 0;
}
