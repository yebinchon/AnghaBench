
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_help ;
 int exit (int) ;
 int for_each_online_package_in_set (int ,int *,int *,int *,int *) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 int isst_ctdp_display_information_end (int ) ;
 int isst_ctdp_display_information_start (int ) ;
 scalar_t__ max_target_cpus ;
 int outf ;
 int set_tdp_level_for_cpu ;
 int stderr ;
 int tdp_level ;

__attribute__((used)) static void set_tdp_level(void)
{
 if (cmd_help) {
  fprintf(stderr, "Set Config TDP level\n");
  fprintf(stderr,
   "\t Arguments: -l|--level : Specify tdp level\n");
  fprintf(stderr,
   "\t Optional Arguments: -o | online : online/offline for the tdp level\n");
  exit(0);
 }

 if (tdp_level == 0xff) {
  fprintf(outf, "Invalid command: specify tdp_level\n");
  exit(1);
 }
 isst_ctdp_display_information_start(outf);
 if (max_target_cpus)
  for_each_online_target_cpu_in_set(set_tdp_level_for_cpu, ((void*)0),
        ((void*)0), ((void*)0), ((void*)0));
 else
  for_each_online_package_in_set(set_tdp_level_for_cpu, ((void*)0),
            ((void*)0), ((void*)0), ((void*)0));
 isst_ctdp_display_information_end(outf);
}
