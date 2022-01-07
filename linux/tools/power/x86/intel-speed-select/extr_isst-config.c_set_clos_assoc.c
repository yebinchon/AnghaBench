
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_help ;
 int current_clos ;
 int exit (int ) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 scalar_t__ max_target_cpus ;
 int set_clos_assoc_for_cpu ;
 int stderr ;

__attribute__((used)) static void set_clos_assoc(void)
{
 if (cmd_help) {
  fprintf(stderr, "Associate a clos id to a CPU\n");
  fprintf(stderr,
   "\tSpecify targeted clos id with [--clos|-c]\n");
  exit(0);
 }

 if (current_clos < 0 || current_clos > 3) {
  fprintf(stderr, "Invalid clos id\n");
  exit(0);
 }
 if (max_target_cpus)
  for_each_online_target_cpu_in_set(set_clos_assoc_for_cpu, ((void*)0),
        ((void*)0), ((void*)0), ((void*)0));
 else {
  fprintf(stderr,
   "Invalid target cpu. Specify with [-c|--cpu]\n");
 }
}
