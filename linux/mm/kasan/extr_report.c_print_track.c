
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_track {scalar_t__ stack; int pid; } ;


 int pr_err (char*,...) ;
 unsigned int stack_depot_fetch (scalar_t__,unsigned long**) ;
 int stack_trace_print (unsigned long*,unsigned int,int ) ;

__attribute__((used)) static void print_track(struct kasan_track *track, const char *prefix)
{
 pr_err("%s by task %u:\n", prefix, track->pid);
 if (track->stack) {
  unsigned long *entries;
  unsigned int nr_entries;

  nr_entries = stack_depot_fetch(track->stack, &entries);
  stack_trace_print(entries, nr_entries, 0);
 } else {
  pr_err("(stack is not available)\n");
 }
}
