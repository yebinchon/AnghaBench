
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_help ;
 int current_clos ;
 int dump_clos_config_for_cpu ;
 int exit (int ) ;
 int for_each_online_package_in_set (int ,int *,int *,int *,int *) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 int isst_ctdp_display_information_end (int ) ;
 int isst_ctdp_display_information_start (int ) ;
 scalar_t__ max_target_cpus ;
 int outf ;
 int stderr ;

__attribute__((used)) static void dump_clos_config(void)
{
 if (cmd_help) {
  fprintf(stderr,
   "Print Intel Speed Select Technology core power configuration\n");
  fprintf(stderr,
   "\tArguments: [-c | --clos]: Specify clos id\n");
  exit(0);
 }
 if (current_clos < 0 || current_clos > 3) {
  fprintf(stderr, "Invalid clos id\n");
  exit(0);
 }

 isst_ctdp_display_information_start(outf);
 if (max_target_cpus)
  for_each_online_target_cpu_in_set(dump_clos_config_for_cpu,
        ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 else
  for_each_online_package_in_set(dump_clos_config_for_cpu, ((void*)0),
            ((void*)0), ((void*)0), ((void*)0));
 isst_ctdp_display_information_end(outf);
}
