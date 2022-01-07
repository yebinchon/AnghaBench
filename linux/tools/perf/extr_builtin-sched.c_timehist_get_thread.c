
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct perf_sched {scalar_t__ idle_hist; } ;
struct perf_sample {int cpu; scalar_t__ tid; int pid; } ;
struct machine {int dummy; } ;
struct idle_thread_runtime {struct thread* last_thread; } ;
struct evsel {int dummy; } ;


 struct thread* get_idle_thread (int ) ;
 scalar_t__ is_idle_sample (struct perf_sample*,struct evsel*) ;
 struct thread* machine__findnew_thread (struct machine*,int ,int ) ;
 scalar_t__ perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*,int ) ;
 int save_idle_callchain (struct perf_sched*,struct idle_thread_runtime*,struct perf_sample*) ;
 int save_task_callchain (struct perf_sched*,struct perf_sample*,struct evsel*,struct machine*) ;
 struct idle_thread_runtime* thread__priv (struct thread*) ;

__attribute__((used)) static struct thread *timehist_get_thread(struct perf_sched *sched,
       struct perf_sample *sample,
       struct machine *machine,
       struct evsel *evsel)
{
 struct thread *thread;

 if (is_idle_sample(sample, evsel)) {
  thread = get_idle_thread(sample->cpu);
  if (thread == ((void*)0))
   pr_err("Failed to get idle thread for cpu %d.\n", sample->cpu);

 } else {

  thread = machine__findnew_thread(machine, sample->pid,
       sample->tid ?: sample->pid);
  if (thread == ((void*)0)) {
   pr_debug("Failed to get thread for tid %d. skipping sample.\n",
     sample->tid);
  }

  save_task_callchain(sched, sample, evsel, machine);
  if (sched->idle_hist) {
   struct thread *idle;
   struct idle_thread_runtime *itr;

   idle = get_idle_thread(sample->cpu);
   if (idle == ((void*)0)) {
    pr_err("Failed to get idle thread for cpu %d.\n", sample->cpu);
    return ((void*)0);
   }

   itr = thread__priv(idle);
   if (itr == ((void*)0))
    return ((void*)0);

   itr->last_thread = thread;


   if (perf_evsel__intval(evsel, sample, "next_pid") == 0)
    save_idle_callchain(sched, itr, sample);
  }
 }

 return thread;
}
