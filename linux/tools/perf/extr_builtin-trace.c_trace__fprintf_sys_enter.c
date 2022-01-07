
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {int output; int raw_augmented_syscalls_args_size; int host; } ;
struct thread_trace {int dummy; } ;
struct thread {int dummy; } ;
struct syscall {int dummy; } ;
struct perf_sample {int tid; int pid; } ;
struct evsel {int dummy; } ;
typedef int msg ;


 int fprintf (int ,char*,char*) ;
 int id ;
 struct thread* machine__findnew_thread (int ,int ,int ) ;
 void* perf_evsel__sc_tp_ptr (struct evsel*,void*,struct perf_sample*) ;
 int perf_evsel__sc_tp_uint (struct evsel*,int ,struct perf_sample*) ;
 void* syscall__augmented_args (struct syscall*,struct perf_sample*,int*,int ) ;
 int syscall__scnprintf_args (struct syscall*,char*,int,void*,void*,int,struct trace*,struct thread*) ;
 int thread__put (struct thread*) ;
 struct thread_trace* thread__trace (struct thread*,int ) ;
 struct syscall* trace__syscall_info (struct trace*,struct evsel*,int) ;

__attribute__((used)) static int trace__fprintf_sys_enter(struct trace *trace, struct evsel *evsel,
        struct perf_sample *sample)
{
 struct thread_trace *ttrace;
 struct thread *thread;
 int id = perf_evsel__sc_tp_uint(evsel, id, sample), err = -1;
 struct syscall *sc = trace__syscall_info(trace, evsel, id);
 char msg[1024];
 void *args, *augmented_args = ((void*)0);
 int augmented_args_size;

 if (sc == ((void*)0))
  return -1;

 thread = machine__findnew_thread(trace->host, sample->pid, sample->tid);
 ttrace = thread__trace(thread, trace->output);




 if (ttrace == ((void*)0))
  goto out_put;

 args = perf_evsel__sc_tp_ptr(evsel, args, sample);
 augmented_args = syscall__augmented_args(sc, sample, &augmented_args_size, trace->raw_augmented_syscalls_args_size);
 syscall__scnprintf_args(sc, msg, sizeof(msg), args, augmented_args, augmented_args_size, trace, thread);
 fprintf(trace->output, "%s", msg);
 err = 0;
out_put:
 thread__put(thread);
 return err;
}
