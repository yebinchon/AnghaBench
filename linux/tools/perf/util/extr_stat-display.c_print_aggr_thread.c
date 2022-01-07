
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target {int dummy; } ;
struct perf_stat_config {int * stats; int * output; } ;
struct perf_aggr_thread_value {int id; int ena; int run; int uval; int counter; } ;
struct TYPE_2__ {int cpus; int threads; } ;
struct evsel {TYPE_1__ core; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int fputc (char,int *) ;
 int free (struct perf_aggr_thread_value*) ;
 int perf_cpu_map__nr (int ) ;
 int perf_thread_map__nr (int ) ;
 int perror (char*) ;
 int printout (struct perf_stat_config*,int,int ,int ,int ,char*,int ,int ,double,int *) ;
 int rt_stat ;
 struct perf_aggr_thread_value* sort_aggr_thread (struct evsel*,int,int,int*,struct target*) ;

__attribute__((used)) static void print_aggr_thread(struct perf_stat_config *config,
         struct target *_target,
         struct evsel *counter, char *prefix)
{
 FILE *output = config->output;
 int nthreads = perf_thread_map__nr(counter->core.threads);
 int ncpus = perf_cpu_map__nr(counter->core.cpus);
 int thread, sorted_threads, id;
 struct perf_aggr_thread_value *buf;

 buf = sort_aggr_thread(counter, nthreads, ncpus, &sorted_threads, _target);
 if (!buf) {
  perror("cannot sort aggr thread");
  return;
 }

 for (thread = 0; thread < sorted_threads; thread++) {
  if (prefix)
   fprintf(output, "%s", prefix);

  id = buf[thread].id;
  if (config->stats)
   printout(config, id, 0, buf[thread].counter, buf[thread].uval,
     prefix, buf[thread].run, buf[thread].ena, 1.0,
     &config->stats[id]);
  else
   printout(config, id, 0, buf[thread].counter, buf[thread].uval,
     prefix, buf[thread].run, buf[thread].ena, 1.0,
     &rt_stat);
  fputc('\n', output);
 }

 free(buf);
}
