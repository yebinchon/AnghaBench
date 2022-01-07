
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_help ;
 int exit (int ) ;
 int for_each_online_package_in_set (int ,int *,int *,int *,int*) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int*) ;
 int fprintf (int ,char*) ;
 int isst_ctdp_display_information_end (int ) ;
 int isst_ctdp_display_information_start (int ) ;
 scalar_t__ max_target_cpus ;
 int outf ;
 int set_fact_for_cpu ;
 int stderr ;

__attribute__((used)) static void set_fact_enable(void)
{
 int status = 1;

 if (cmd_help) {
  fprintf(stderr,
   "Enable Intel Speed Select Technology Turbo frequency feature\n");
  fprintf(stderr,
   "Optional: -t|--trl : Specify turbo ratio limit\n");
  exit(0);
 }

 isst_ctdp_display_information_start(outf);
 if (max_target_cpus)
  for_each_online_target_cpu_in_set(set_fact_for_cpu, ((void*)0), ((void*)0),
        ((void*)0), &status);
 else
  for_each_online_package_in_set(set_fact_for_cpu, ((void*)0), ((void*)0),
            ((void*)0), &status);
 isst_ctdp_display_information_end(outf);
}
