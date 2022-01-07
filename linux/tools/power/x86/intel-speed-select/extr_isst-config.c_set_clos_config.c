
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clos_desired ;
 int clos_epp ;
 int clos_max ;
 scalar_t__ clos_min ;
 int clos_prop_prio ;
 scalar_t__ cmd_help ;
 int current_clos ;
 int exit (int ) ;
 int for_each_online_package_in_set (int ,int *,int *,int *,int *) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 int isst_ctdp_display_information_end (int ) ;
 int isst_ctdp_display_information_start (int ) ;
 scalar_t__ max_target_cpus ;
 int outf ;
 int set_clos_config_for_cpu ;
 int stderr ;

__attribute__((used)) static void set_clos_config(void)
{
 if (cmd_help) {
  fprintf(stderr,
   "Set core-power configuration for one of the four clos ids\n");
  fprintf(stderr,
   "\tSpecify targeted clos id with [--clos|-c]\n");
  fprintf(stderr, "\tSpecify clos EPP with [--epp|-e]\n");
  fprintf(stderr,
   "\tSpecify clos Proportional Priority [--weight|-w]\n");
  fprintf(stderr, "\tSpecify clos min with [--min|-n]\n");
  fprintf(stderr, "\tSpecify clos max with [--max|-m]\n");
  fprintf(stderr, "\tSpecify clos desired with [--desired|-d]\n");
  exit(0);
 }

 if (current_clos < 0 || current_clos > 3) {
  fprintf(stderr, "Invalid clos id\n");
  exit(0);
 }
 if (clos_epp < 0 || clos_epp > 0x0F) {
  fprintf(stderr, "clos epp is not specified, default: 0\n");
  clos_epp = 0;
 }
 if (clos_prop_prio < 0 || clos_prop_prio > 0x0F) {
  fprintf(stderr,
   "clos frequency weight is not specified, default: 0\n");
  clos_prop_prio = 0;
 }
 if (clos_min < 0) {
  fprintf(stderr, "clos min is not specified, default: 0\n");
  clos_min = 0;
 }
 if (clos_max < 0) {
  fprintf(stderr, "clos max is not specified, default: 0xff\n");
  clos_max = 0xff;
 }
 if (clos_desired < 0) {
  fprintf(stderr, "clos desired is not specified, default: 0\n");
  clos_desired = 0x00;
 }

 isst_ctdp_display_information_start(outf);
 if (max_target_cpus)
  for_each_online_target_cpu_in_set(set_clos_config_for_cpu, ((void*)0),
        ((void*)0), ((void*)0), ((void*)0));
 else
  for_each_online_package_in_set(set_clos_config_for_cpu, ((void*)0),
            ((void*)0), ((void*)0), ((void*)0));
 isst_ctdp_display_information_end(outf);
}
