
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_help ;
 int enable_clos_qos_config ;
 int exit (int ) ;
 int for_each_online_package_in_set (int ,int *,int *,int *,int*) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int*) ;
 int fprintf (int ,char*) ;
 int isst_ctdp_display_information_end (int ) ;
 int isst_ctdp_display_information_start (int ) ;
 scalar_t__ max_target_cpus ;
 int outf ;
 int stderr ;

__attribute__((used)) static void set_clos_disable(void)
{
 int status = 0;

 if (cmd_help) {
  fprintf(stderr,
   "Disable core-power: [No command arguments are required]\n");
  exit(0);
 }

 isst_ctdp_display_information_start(outf);
 if (max_target_cpus)
  for_each_online_target_cpu_in_set(enable_clos_qos_config, ((void*)0),
        ((void*)0), ((void*)0), &status);
 else
  for_each_online_package_in_set(enable_clos_qos_config, ((void*)0),
            ((void*)0), ((void*)0), &status);
 isst_ctdp_display_information_end(outf);
}
