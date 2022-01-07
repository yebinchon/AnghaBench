
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_stack {unsigned long long kernel_start; struct call_return_processor* crp; int rstate; } ;
struct thread {TYPE_1__* mg; } ;
struct machine {int env; } ;
struct call_return_processor {int dummy; } ;
struct TYPE_2__ {struct machine* machine; } ;


 int X86_RETPOLINE_POSSIBLE ;
 unsigned long long machine__kernel_start (struct machine*) ;
 char* perf_env__arch (int ) ;
 int strcmp (char const*,char*) ;
 int thread_stack__grow (struct thread_stack*) ;

__attribute__((used)) static int thread_stack__init(struct thread_stack *ts, struct thread *thread,
         struct call_return_processor *crp)
{
 int err;

 err = thread_stack__grow(ts);
 if (err)
  return err;

 if (thread->mg && thread->mg->machine) {
  struct machine *machine = thread->mg->machine;
  const char *arch = perf_env__arch(machine->env);

  ts->kernel_start = machine__kernel_start(machine);
  if (!strcmp(arch, "x86"))
   ts->rstate = X86_RETPOLINE_POSSIBLE;
 } else {
  ts->kernel_start = 1ULL << 63;
 }
 ts->crp = crp;

 return 0;
}
