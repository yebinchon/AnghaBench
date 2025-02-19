
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sched {int cmp_pid; int sort_list; int sort_order; } ;
struct option {int dummy; } ;


 int free (char*) ;
 scalar_t__ sort_dimension__add (char*,int *) ;
 char* strdup (int ) ;
 char* strtok_r (char*,char*,char**) ;
 int usage_with_options_msg (char const* const*,struct option const*,char*,char*) ;

__attribute__((used)) static void setup_sorting(struct perf_sched *sched, const struct option *options,
     const char * const usage_msg[])
{
 char *tmp, *tok, *str = strdup(sched->sort_order);

 for (tok = strtok_r(str, ", ", &tmp);
   tok; tok = strtok_r(((void*)0), ", ", &tmp)) {
  if (sort_dimension__add(tok, &sched->sort_list) < 0) {
   usage_with_options_msg(usage_msg, options,
     "Unknown --sort key: `%s'", tok);
  }
 }

 free(str);

 sort_dimension__add("pid", &sched->cmp_pid);
}
