
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_ftrace {char const* tracer; } ;


 int pr_err (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strstarts (char const*,char*) ;

__attribute__((used)) static int perf_ftrace_config(const char *var, const char *value, void *cb)
{
 struct perf_ftrace *ftrace = cb;

 if (!strstarts(var, "ftrace."))
  return 0;

 if (strcmp(var, "ftrace.tracer"))
  return -1;

 if (!strcmp(value, "function_graph") ||
     !strcmp(value, "function")) {
  ftrace->tracer = value;
  return 0;
 }

 pr_err("Please select \"function_graph\" (default) or \"function\"\n");
 return -1;
}
