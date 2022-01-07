
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct symbol {int ignore; int name; } ;
struct perf_sched {scalar_t__ max_stack; int show_callchain; } ;
struct perf_sample {int * callchain; int pid; } ;
struct machine {int dummy; } ;
struct evsel {int dummy; } ;
struct callchain_cursor_node {struct symbol* sym; } ;
struct callchain_cursor {int dummy; } ;


 struct callchain_cursor callchain_cursor ;
 int callchain_cursor_advance (struct callchain_cursor*) ;
 int callchain_cursor_commit (struct callchain_cursor*) ;
 struct callchain_cursor_node* callchain_cursor_current (struct callchain_cursor*) ;
 struct thread* machine__findnew_thread (struct machine*,int ,int ) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*) ;
 int strcmp (int ,char*) ;
 scalar_t__ thread__resolve_callchain (struct thread*,struct callchain_cursor*,struct evsel*,struct perf_sample*,int *,int *,scalar_t__) ;
 scalar_t__ verbose ;

__attribute__((used)) static void save_task_callchain(struct perf_sched *sched,
    struct perf_sample *sample,
    struct evsel *evsel,
    struct machine *machine)
{
 struct callchain_cursor *cursor = &callchain_cursor;
 struct thread *thread;


 thread = machine__findnew_thread(machine, sample->pid, sample->pid);
 if (thread == ((void*)0)) {
  pr_debug("Failed to get thread for pid %d.\n", sample->pid);
  return;
 }

 if (!sched->show_callchain || sample->callchain == ((void*)0))
  return;

 if (thread__resolve_callchain(thread, cursor, evsel, sample,
          ((void*)0), ((void*)0), sched->max_stack + 2) != 0) {
  if (verbose > 0)
   pr_err("Failed to resolve callchain. Skipping\n");

  return;
 }

 callchain_cursor_commit(cursor);

 while (1) {
  struct callchain_cursor_node *node;
  struct symbol *sym;

  node = callchain_cursor_current(cursor);
  if (node == ((void*)0))
   break;

  sym = node->sym;
  if (sym) {
   if (!strcmp(sym->name, "schedule") ||
       !strcmp(sym->name, "__schedule") ||
       !strcmp(sym->name, "preempt_schedule"))
    sym->ignore = 1;
  }

  callchain_cursor_advance(cursor);
 }
}
