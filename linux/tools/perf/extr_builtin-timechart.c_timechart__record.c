
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timechart {int with_backtrace; scalar_t__ tasks_only; scalar_t__ power_only; } ;


 unsigned int ARRAY_SIZE (char const* const*) ;
 int ENOMEM ;
 char** calloc (unsigned int,int) ;
 int cmd_record (unsigned int,char const**) ;
 scalar_t__ is_valid_tracepoint (char*) ;
 void* strdup (char const* const) ;
 int use_old_power_events ;

__attribute__((used)) static int timechart__record(struct timechart *tchart, int argc, const char **argv)
{
 unsigned int rec_argc, i, j;
 const char **rec_argv;
 const char **p;
 unsigned int record_elems;

 const char * const common_args[] = {
  "record", "-a", "-R", "-c", "1",
 };
 unsigned int common_args_nr = ARRAY_SIZE(common_args);

 const char * const backtrace_args[] = {
  "-g",
 };
 unsigned int backtrace_args_no = ARRAY_SIZE(backtrace_args);

 const char * const power_args[] = {
  "-e", "power:cpu_frequency",
  "-e", "power:cpu_idle",
 };
 unsigned int power_args_nr = ARRAY_SIZE(power_args);

 const char * const old_power_args[] = {





 };
 unsigned int old_power_args_nr = ARRAY_SIZE(old_power_args);

 const char * const tasks_args[] = {
  "-e", "sched:sched_wakeup",
  "-e", "sched:sched_switch",
 };
 unsigned int tasks_args_nr = ARRAY_SIZE(tasks_args);
 if (tchart->power_only)
  tasks_args_nr = 0;

 if (tchart->tasks_only) {
  power_args_nr = 0;
  old_power_args_nr = 0;
 }

 if (!tchart->with_backtrace)
  backtrace_args_no = 0;

 record_elems = common_args_nr + tasks_args_nr +
  power_args_nr + old_power_args_nr + backtrace_args_no;

 rec_argc = record_elems + argc;
 rec_argv = calloc(rec_argc + 1, sizeof(char *));

 if (rec_argv == ((void*)0))
  return -ENOMEM;

 p = rec_argv;
 for (i = 0; i < common_args_nr; i++)
  *p++ = strdup(common_args[i]);

 for (i = 0; i < backtrace_args_no; i++)
  *p++ = strdup(backtrace_args[i]);

 for (i = 0; i < tasks_args_nr; i++)
  *p++ = strdup(tasks_args[i]);

 for (i = 0; i < power_args_nr; i++)
  *p++ = strdup(power_args[i]);

 for (i = 0; i < old_power_args_nr; i++)
  *p++ = strdup(old_power_args[i]);

 for (j = 0; j < (unsigned int)argc; j++)
  *p++ = argv[j];

 return cmd_record(rec_argc, rec_argv);
}
