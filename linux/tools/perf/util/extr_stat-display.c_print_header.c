
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {char* cpu_list; char* pid; char* tid; scalar_t__ system_wide; } ;
struct perf_stat_config {int run_count; int csv_output; int * output; } ;
typedef int FILE ;


 int fflush (int ) ;
 int fprintf (int *,char*,...) ;
 int stdout ;
 int target__has_task (struct target*) ;

__attribute__((used)) static void print_header(struct perf_stat_config *config,
    struct target *_target,
    int argc, const char **argv)
{
 FILE *output = config->output;
 int i;

 fflush(stdout);

 if (!config->csv_output) {
  fprintf(output, "\n");
  fprintf(output, " Performance counter stats for ");
  if (_target->system_wide)
   fprintf(output, "\'system wide");
  else if (_target->cpu_list)
   fprintf(output, "\'CPU(s) %s", _target->cpu_list);
  else if (!target__has_task(_target)) {
   fprintf(output, "\'%s", argv ? argv[0] : "pipe");
   for (i = 1; argv && (i < argc); i++)
    fprintf(output, " %s", argv[i]);
  } else if (_target->pid)
   fprintf(output, "process id \'%s", _target->pid);
  else
   fprintf(output, "thread id \'%s", _target->tid);

  fprintf(output, "\'");
  if (config->run_count > 1)
   fprintf(output, " (%d runs)", config->run_count);
  fprintf(output, ":\n\n");
 }
}
