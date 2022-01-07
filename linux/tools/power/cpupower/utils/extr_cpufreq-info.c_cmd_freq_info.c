
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 char* _ (char*) ;
 unsigned int bitmask_first (int ) ;
 scalar_t__ bitmask_isallclear (int ) ;
 int bitmask_isbitset (int ,unsigned int) ;
 unsigned int bitmask_last (int ) ;
 int bitmask_setbit (int ,int ) ;
 int cpus_chosen ;
 int debug_output_one (unsigned int) ;
 int fprintf (int ,char*) ;
 int get_affected_cpus (unsigned int) ;
 int get_available_governors (unsigned int) ;
 int get_boost_mode (unsigned int) ;
 int get_driver (unsigned int) ;
 int get_freq_hardware (unsigned int,unsigned int) ;
 int get_freq_kernel (unsigned int,unsigned int) ;
 int get_freq_stats (unsigned int,unsigned int) ;
 int get_hardware_limits (unsigned int,unsigned int) ;
 int get_latency (unsigned int,unsigned int) ;
 int get_policy (unsigned int) ;
 int get_related_cpus (unsigned int) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int info_opts ;
 int no_rounding ;
 int printf (char*,...) ;
 int proc_cpufreq_output () ;
 int stderr ;
 int sysfs_is_cpu_online (unsigned int) ;

int cmd_freq_info(int argc, char **argv)
{
 extern char *optarg;
 extern int optind, opterr, optopt;
 int ret = 0, cont = 1;
 unsigned int cpu = 0;
 unsigned int human = 0;
 int output_param = 0;

 do {
  ret = getopt_long(argc, argv, "oefwldpgrasmybn", info_opts,
      ((void*)0));
  switch (ret) {
  case '?':
   output_param = '?';
   cont = 0;
   break;
  case -1:
   cont = 0;
   break;
  case 'b':
  case 'o':
  case 'a':
  case 'r':
  case 'g':
  case 'p':
  case 'd':
  case 'l':
  case 'w':
  case 'f':
  case 'e':
  case 's':
  case 'y':
   if (output_param) {
    output_param = -1;
    cont = 0;
    break;
   }
   output_param = ret;
   break;
  case 'm':
   if (human) {
    output_param = -1;
    cont = 0;
    break;
   }
   human = 1;
   break;
  case 'n':
   no_rounding = 1;
   break;
  default:
   fprintf(stderr, "invalid or unknown argument\n");
   return EXIT_FAILURE;
  }
 } while (cont);

 switch (output_param) {
 case 'o':
  if (!bitmask_isallclear(cpus_chosen)) {
   printf(_("The argument passed to this tool can't be "
     "combined with passing a --cpu argument\n"));
   return -EINVAL;
  }
  break;
 case 0:
  output_param = 'e';
 }

 ret = 0;


 if (bitmask_isallclear(cpus_chosen))
  bitmask_setbit(cpus_chosen, 0);

 switch (output_param) {
 case -1:
  printf(_("You can't specify more than one --cpu parameter and/or\n"
         "more than one output-specific argument\n"));
  return -EINVAL;
 case '?':
  printf(_("invalid or unknown argument\n"));
  return -EINVAL;
 case 'o':
  proc_cpufreq_output();
  return EXIT_SUCCESS;
 }

 for (cpu = bitmask_first(cpus_chosen);
      cpu <= bitmask_last(cpus_chosen); cpu++) {

  if (!bitmask_isbitset(cpus_chosen, cpu))
   continue;

  printf(_("analyzing CPU %d:\n"), cpu);

  if (sysfs_is_cpu_online(cpu) != 1) {
   printf(_(" *is offline\n"));
   printf("\n");
   continue;
  }

  switch (output_param) {
  case 'b':
   get_boost_mode(cpu);
   break;
  case 'e':
   debug_output_one(cpu);
   break;
  case 'a':
   ret = get_affected_cpus(cpu);
   break;
  case 'r':
   ret = get_related_cpus(cpu);
   break;
  case 'g':
   ret = get_available_governors(cpu);
   break;
  case 'p':
   ret = get_policy(cpu);
   break;
  case 'd':
   ret = get_driver(cpu);
   break;
  case 'l':
   ret = get_hardware_limits(cpu, human);
   break;
  case 'w':
   ret = get_freq_hardware(cpu, human);
   break;
  case 'f':
   ret = get_freq_kernel(cpu, human);
   break;
  case 's':
   ret = get_freq_stats(cpu, human);
   break;
  case 'y':
   ret = get_latency(cpu, human);
   break;
  }
  if (ret)
   return ret;
 }
 return ret;
}
