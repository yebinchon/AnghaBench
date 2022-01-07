
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct thread {int filter; int filter_entry_depth; } ;
struct perf_sample {int cpu; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;
struct TYPE_2__ {char* graph_function; } ;


 char* resolve_branch_sym (struct perf_sample*,struct evsel*,struct thread*,struct addr_location*,int *) ;
 unsigned int strcspn (char const*,char*) ;
 unsigned int strlen (char const*) ;
 int strncmp (char const*,char const*,unsigned int) ;
 TYPE_1__ symbol_conf ;
 int thread_stack__depth (struct thread*,int ) ;

__attribute__((used)) static bool show_event(struct perf_sample *sample,
         struct evsel *evsel,
         struct thread *thread,
         struct addr_location *al)
{
 int depth = thread_stack__depth(thread, sample->cpu);

 if (!symbol_conf.graph_function)
  return 1;

 if (thread->filter) {
  if (depth <= thread->filter_entry_depth) {
   thread->filter = 0;
   return 0;
  }
  return 1;
 } else {
  const char *s = symbol_conf.graph_function;
  u64 ip;
  const char *name = resolve_branch_sym(sample, evsel, thread, al,
    &ip);
  unsigned nlen;

  if (!name)
   return 0;
  nlen = strlen(name);
  while (*s) {
   unsigned len = strcspn(s, ",");
   if (nlen == len && !strncmp(name, s, len)) {
    thread->filter = 1;
    thread->filter_entry_depth = depth;
    return 1;
   }
   s += len;
   if (*s == ',')
    s++;
  }
  return 0;
 }
}
