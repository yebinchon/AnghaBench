
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef void* u32 ;
struct work_atoms {int dummy; } ;
struct thread {int dummy; } ;
struct perf_sched {int cmp_pid; int atom_root; } ;
struct perf_sample {int cpu; void* time; } ;
struct machine {int dummy; } ;
struct evsel {int dummy; } ;


 int BUG_ON (int) ;
 int MAX_CPUS ;
 int add_runtime_event (struct work_atoms*,void* const,void*) ;
 scalar_t__ add_sched_out_event (struct work_atoms*,char,void*) ;
 struct thread* machine__findnew_thread (struct machine*,int,void* const) ;
 void* perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int pr_err (char*) ;
 int thread__put (struct thread*) ;
 scalar_t__ thread_atoms_insert (struct perf_sched*,struct thread*) ;
 struct work_atoms* thread_atoms_search (int *,struct thread*,int *) ;

__attribute__((used)) static int latency_runtime_event(struct perf_sched *sched,
     struct evsel *evsel,
     struct perf_sample *sample,
     struct machine *machine)
{
 const u32 pid = perf_evsel__intval(evsel, sample, "pid");
 const u64 runtime = perf_evsel__intval(evsel, sample, "runtime");
 struct thread *thread = machine__findnew_thread(machine, -1, pid);
 struct work_atoms *atoms = thread_atoms_search(&sched->atom_root, thread, &sched->cmp_pid);
 u64 timestamp = sample->time;
 int cpu = sample->cpu, err = -1;

 if (thread == ((void*)0))
  return -1;

 BUG_ON(cpu >= MAX_CPUS || cpu < 0);
 if (!atoms) {
  if (thread_atoms_insert(sched, thread))
   goto out_put;
  atoms = thread_atoms_search(&sched->atom_root, thread, &sched->cmp_pid);
  if (!atoms) {
   pr_err("in-event: Internal tree error");
   goto out_put;
  }
  if (add_sched_out_event(atoms, 'R', timestamp))
   goto out_put;
 }

 add_runtime_event(atoms, runtime, timestamp);
 err = 0;
out_put:
 thread__put(thread);
 return err;
}
