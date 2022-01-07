
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_help ;
 int dump_pbf_config_for_cpu ;
 int exit (int) ;
 int for_each_online_package_in_set (int ,int *,int *,int *,int *) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 int isst_ctdp_display_information_end (int ) ;
 int isst_ctdp_display_information_start (int ) ;
 scalar_t__ max_target_cpus ;
 int outf ;
 int stderr ;
 int tdp_level ;

__attribute__((used)) static void dump_pbf_config(void)
{
 if (cmd_help) {
  fprintf(stderr,
   "Print Intel(R) Speed Select Technology base frequency configuration for a TDP level\n");
  fprintf(stderr,
   "\tArguments: -l|--level : Specify tdp level\n");
  exit(0);
 }

 if (tdp_level == 0xff) {
  fprintf(outf, "Invalid command: specify tdp_level\n");
  exit(1);
 }

 isst_ctdp_display_information_start(outf);
 if (max_target_cpus)
  for_each_online_target_cpu_in_set(dump_pbf_config_for_cpu, ((void*)0),
        ((void*)0), ((void*)0), ((void*)0));
 else
  for_each_online_package_in_set(dump_pbf_config_for_cpu, ((void*)0),
            ((void*)0), ((void*)0), ((void*)0));
 isst_ctdp_display_information_end(outf);
}
