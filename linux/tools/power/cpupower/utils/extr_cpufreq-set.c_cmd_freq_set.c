
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {char* governor; void* max; void* min; } ;
struct cpufreq_affected_cpus {int cpu; struct cpufreq_affected_cpus* next; } ;


 int EINVAL ;
 char* _ (char*) ;
 unsigned int bitmask_first (int ) ;
 scalar_t__ bitmask_isallclear (int ) ;
 int bitmask_isbitset (int ,unsigned int) ;
 unsigned int bitmask_last (int ) ;
 int bitmask_setall (int ) ;
 int bitmask_setbit (int ,int ) ;
 struct cpufreq_affected_cpus* cpufreq_get_related_cpus (unsigned int) ;
 int cpufreq_put_related_cpus (struct cpufreq_affected_cpus*) ;
 int cpupower_is_cpu_online (unsigned int) ;
 int cpus_chosen ;
 int do_one_cpu (unsigned int,struct cpufreq_policy*,unsigned long,int) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int print_error () ;
 int print_unknown_arg () ;
 int printf (char*,...) ;
 int set_opts ;
 int sscanf (char*,char*,char*) ;
 void* string_to_frequency (char*) ;
 int strlen (char*) ;

int cmd_freq_set(int argc, char **argv)
{
 extern char *optarg;
 extern int optind, opterr, optopt;
 int ret = 0, cont = 1;
 int double_parm = 0, related = 0, policychange = 0;
 unsigned long freq = 0;
 char gov[20];
 unsigned int cpu;

 struct cpufreq_policy new_pol = {
  .min = 0,
  .max = 0,
  .governor = ((void*)0),
 };


 do {
  ret = getopt_long(argc, argv, "d:u:g:f:r", set_opts, ((void*)0));
  switch (ret) {
  case '?':
   print_unknown_arg();
   return -EINVAL;
  case -1:
   cont = 0;
   break;
  case 'r':
   if (related)
    double_parm++;
   related++;
   break;
  case 'd':
   if (new_pol.min)
    double_parm++;
   policychange++;
   new_pol.min = string_to_frequency(optarg);
   if (new_pol.min == 0) {
    print_unknown_arg();
    return -EINVAL;
   }
   break;
  case 'u':
   if (new_pol.max)
    double_parm++;
   policychange++;
   new_pol.max = string_to_frequency(optarg);
   if (new_pol.max == 0) {
    print_unknown_arg();
    return -EINVAL;
   }
   break;
  case 'f':
   if (freq)
    double_parm++;
   freq = string_to_frequency(optarg);
   if (freq == 0) {
    print_unknown_arg();
    return -EINVAL;
   }
   break;
  case 'g':
   if (new_pol.governor)
    double_parm++;
   policychange++;
   if ((strlen(optarg) < 3) || (strlen(optarg) > 18)) {
    print_unknown_arg();
    return -EINVAL;
   }
   if ((sscanf(optarg, "%19s", gov)) != 1) {
    print_unknown_arg();
    return -EINVAL;
   }
   new_pol.governor = gov;
   break;
  }
 } while (cont);


 if (double_parm) {
  printf("the same parameter was passed more than once\n");
  return -EINVAL;
 }

 if (freq && policychange) {
  printf(_("the -f/--freq parameter cannot be combined with -d/--min, -u/--max or\n"
    "-g/--governor parameters\n"));
  return -EINVAL;
 }

 if (!freq && !policychange) {
  printf(_("At least one parameter out of -f/--freq, -d/--min, -u/--max, and\n"
    "-g/--governor must be passed\n"));
  return -EINVAL;
 }


 if (bitmask_isallclear(cpus_chosen))
  bitmask_setall(cpus_chosen);


 if (related) {
  for (cpu = bitmask_first(cpus_chosen);
       cpu <= bitmask_last(cpus_chosen); cpu++) {
   struct cpufreq_affected_cpus *cpus;

   if (!bitmask_isbitset(cpus_chosen, cpu) ||
       cpupower_is_cpu_online(cpu) != 1)
    continue;

   cpus = cpufreq_get_related_cpus(cpu);
   if (!cpus)
    break;
   while (cpus->next) {
    bitmask_setbit(cpus_chosen, cpus->cpu);
    cpus = cpus->next;
   }

   bitmask_setbit(cpus_chosen, cpus->cpu);
   cpufreq_put_related_cpus(cpus);
  }
 }



 for (cpu = bitmask_first(cpus_chosen);
      cpu <= bitmask_last(cpus_chosen); cpu++) {

  if (!bitmask_isbitset(cpus_chosen, cpu) ||
      cpupower_is_cpu_online(cpu) != 1)
   continue;

  printf(_("Setting cpu: %d\n"), cpu);
  ret = do_one_cpu(cpu, &new_pol, freq, policychange);
  if (ret) {
   print_error();
   return ret;
  }
 }

 return 0;
}
