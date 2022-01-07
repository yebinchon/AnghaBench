
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_help ;
 int dump_isst_config_for_cpu ;
 int exit (int ) ;
 int for_each_online_package_in_set (int ,int *,int *,int *,int *) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 int isst_ctdp_display_information_end (int ) ;
 int isst_ctdp_display_information_start (int ) ;
 scalar_t__ max_target_cpus ;
 int outf ;
 int stderr ;

__attribute__((used)) static void dump_isst_config(void)
{
 if (cmd_help) {
  fprintf(stderr,
   "Print Intel(R) Speed Select Technology Performance profile configuration\n");
  fprintf(stderr,
   "including base frequency and turbo frequency configurations\n");
  fprintf(stderr, "Optional: -l|--level : Specify tdp level\n");
  fprintf(stderr,
   "\tIf no arguments, dump information for all TDP levels\n");
  exit(0);
 }

 isst_ctdp_display_information_start(outf);

 if (max_target_cpus)
  for_each_online_target_cpu_in_set(dump_isst_config_for_cpu,
        ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 else
  for_each_online_package_in_set(dump_isst_config_for_cpu, ((void*)0),
            ((void*)0), ((void*)0), ((void*)0));

 isst_ctdp_display_information_end(outf);
}
