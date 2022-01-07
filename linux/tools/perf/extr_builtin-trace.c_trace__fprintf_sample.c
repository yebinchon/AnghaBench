
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {int output; scalar_t__ print_sample; } ;
struct thread {int dummy; } ;
struct perf_sample {int pid; int tid; int cpu; scalar_t__ time; } ;
struct evsel {int dummy; } ;


 double NSEC_PER_MSEC ;
 scalar_t__ fprintf (int ,char*,char*,double,char*,int,int,int) ;
 char* perf_evsel__name (struct evsel*) ;
 char* thread__comm_str (struct thread*) ;

__attribute__((used)) static int trace__fprintf_sample(struct trace *trace, struct evsel *evsel,
     struct perf_sample *sample, struct thread *thread)
{
 int printed = 0;

 if (trace->print_sample) {
  double ts = (double)sample->time / NSEC_PER_MSEC;

  printed += fprintf(trace->output, "%22s %10.3f %s %d/%d [%d]\n",
       perf_evsel__name(evsel), ts,
       thread__comm_str(thread),
       sample->pid, sample->tid, sample->cpu);
 }

 return printed;
}
