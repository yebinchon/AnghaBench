
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int caps; } ;


 int CPUPOWER_CAP_PERF_BIAS ;
 int EXIT_FAILURE ;
 int LC_ALL ;
 int PACKAGE ;
 char* _ (char*) ;
 unsigned int bitmask_first (int ) ;
 scalar_t__ bitmask_isallclear (int ) ;
 int bitmask_isbitset (int ,unsigned int) ;
 unsigned int bitmask_last (int ) ;
 int bitmask_setbit (int ,int ) ;
 TYPE_1__ cpupower_cpu_info ;
 int cpus_chosen ;
 int exit (int ) ;
 int fprintf (int ,char*,int) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int msr_intel_get_perf_bias (unsigned int) ;
 int print_wrong_arg_exit () ;
 int printf (char*,...) ;
 int run_as_root ;
 int set_opts ;
 int setlocale (int ,char*) ;
 int stderr ;
 int sysfs_is_cpu_online (unsigned int) ;
 int textdomain (int ) ;

int cmd_info(int argc, char **argv)
{
 extern char *optarg;
 extern int optind, opterr, optopt;
 unsigned int cpu;

 union {
  struct {
   int perf_bias:1;
  };
  int params;
 } params = {};
 int ret = 0;

 setlocale(LC_ALL, "");
 textdomain(PACKAGE);


 while ((ret = getopt_long(argc, argv, "b", set_opts, ((void*)0))) != -1) {
  switch (ret) {
  case 'b':
   if (params.perf_bias)
    print_wrong_arg_exit();
   params.perf_bias = 1;
   break;
  default:
   print_wrong_arg_exit();
  }
 };

 if (!params.params)
  params.params = 0x7;


 if (bitmask_isallclear(cpus_chosen))
  bitmask_setbit(cpus_chosen, 0);


 if (!params.perf_bias)
  return ret;

 if (params.perf_bias) {
  if (!run_as_root) {
   params.perf_bias = 0;
   printf(_("Intel's performance bias setting needs root privileges\n"));
  } else if (!(cpupower_cpu_info.caps & CPUPOWER_CAP_PERF_BIAS)) {
   printf(_("System does not support Intel's performance"
     " bias setting\n"));
   params.perf_bias = 0;
  }
 }


 for (cpu = bitmask_first(cpus_chosen);
      cpu <= bitmask_last(cpus_chosen); cpu++) {

  if (!bitmask_isbitset(cpus_chosen, cpu))
   continue;

  printf(_("analyzing CPU %d:\n"), cpu);

  if (sysfs_is_cpu_online(cpu) != 1){
   printf(_(" *is offline\n"));
   continue;
  }

  if (params.perf_bias) {
   ret = msr_intel_get_perf_bias(cpu);
   if (ret < 0) {
    fprintf(stderr,
   _("Could not read perf-bias value[%d]\n"), ret);
    exit(EXIT_FAILURE);
   } else
    printf(_("perf-bias: %d\n"), ret);
  }
 }
 return 0;
}
