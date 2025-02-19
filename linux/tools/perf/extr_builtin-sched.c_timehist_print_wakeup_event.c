
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tstr ;
struct thread {int dummy; } ;
struct perf_sched {char* max_cpu; scalar_t__ show_cpu_visual; } ;
struct perf_sample {int cpu; int time; int tid; int pid; } ;
struct machine {int dummy; } ;
struct evsel {int dummy; } ;


 char* comm_width ;
 struct thread* machine__findnew_thread (struct machine*,int ,int ) ;
 int printf (char*,...) ;
 char* timehist_get_commstr (struct thread*) ;
 scalar_t__ timehist_skip_sample (struct perf_sched*,struct thread*,struct evsel*,struct perf_sample*) ;
 int timestamp__scnprintf_usec (int ,char*,int) ;

__attribute__((used)) static void timehist_print_wakeup_event(struct perf_sched *sched,
     struct evsel *evsel,
     struct perf_sample *sample,
     struct machine *machine,
     struct thread *awakened)
{
 struct thread *thread;
 char tstr[64];

 thread = machine__findnew_thread(machine, sample->pid, sample->tid);
 if (thread == ((void*)0))
  return;


 if (timehist_skip_sample(sched, thread, evsel, sample) &&
     timehist_skip_sample(sched, awakened, evsel, sample)) {
  return;
 }

 timestamp__scnprintf_usec(sample->time, tstr, sizeof(tstr));
 printf("%15s [%04d] ", tstr, sample->cpu);
 if (sched->show_cpu_visual)
  printf(" %*s ", sched->max_cpu + 1, "");

 printf(" %-*s ", comm_width, timehist_get_commstr(thread));


 printf("  %9s  %9s  %9s ", "", "", "");

 printf("awakened: %s", timehist_get_commstr(awakened));

 printf("\n");
}
