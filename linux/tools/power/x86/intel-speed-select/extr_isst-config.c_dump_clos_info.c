
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_help ;
 int exit (int ) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 int get_clos_info_for_cpu ;
 int isst_ctdp_display_information_end (int ) ;
 int isst_ctdp_display_information_start (int ) ;
 int max_target_cpus ;
 int outf ;
 int stderr ;

__attribute__((used)) static void dump_clos_info(void)
{
 if (cmd_help) {
  fprintf(stderr,
   "Print Intel Speed Select Technology core power information\n");
  fprintf(stderr, "\tSpecify targeted cpu id with [--cpu|-c]\n");
  exit(0);
 }

 if (!max_target_cpus) {
  fprintf(stderr,
   "Invalid target cpu. Specify with [-c|--cpu]\n");
  exit(0);
 }

 isst_ctdp_display_information_start(outf);
 for_each_online_target_cpu_in_set(get_clos_info_for_cpu, ((void*)0),
       ((void*)0), ((void*)0), ((void*)0));
 isst_ctdp_display_information_end(outf);

}
