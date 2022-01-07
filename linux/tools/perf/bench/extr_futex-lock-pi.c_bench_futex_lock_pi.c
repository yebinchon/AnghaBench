
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sigaction {int (* sa_sigaction ) (int ,int *,int *) ;int sa_mask; } ;
struct perf_cpu_map {int nr; } ;
typedef int pthread_attr_t ;
struct TYPE_7__ {unsigned long tv_sec; } ;
struct TYPE_6__ {unsigned long ops; int tid; int futex; int thread; } ;


 int EXIT_FAILURE ;
 int FUTEX_PRIVATE_FLAG ;
 int SIGINT ;
 int bench_futex_lock_pi_usage ;
 TYPE_1__* calloc (int,int) ;
 int create_threads (TYPE_1__*,int ,struct perf_cpu_map*) ;
 int err (int ,char*) ;
 int exit (int ) ;
 int free (TYPE_1__*) ;
 int fshared ;
 int futex_flag ;
 int getpid () ;
 int gettimeofday (int *,int *) ;
 int init_stats (int *) ;
 scalar_t__ multi ;
 int nsecs ;
 int nthreads ;
 int options ;
 int parse_options (int,char const**,int ,int ,int ) ;
 struct perf_cpu_map* perf_cpu_map__new (int *) ;
 int print_summary () ;
 int printf (char*,int,int,unsigned long) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__ runtime ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigfillset (int *) ;
 int silent ;
 int sleep (int) ;
 int start ;
 int thread_lock ;
 int thread_parent ;
 int thread_worker ;
 int threads_starting ;
 int throughput_stats ;
 int toggle_done (int ,int *,int *) ;
 int update_stats (int *,unsigned long) ;
 int usage_with_options (int ,int ) ;
 TYPE_1__* worker ;
 int zfree (int*) ;

int bench_futex_lock_pi(int argc, const char **argv)
{
 int ret = 0;
 unsigned int i;
 struct sigaction act;
 pthread_attr_t thread_attr;
 struct perf_cpu_map *cpu;

 argc = parse_options(argc, argv, options, bench_futex_lock_pi_usage, 0);
 if (argc)
  goto err;

 cpu = perf_cpu_map__new(((void*)0));
 if (!cpu)
  err(EXIT_FAILURE, "calloc");

 sigfillset(&act.sa_mask);
 act.sa_sigaction = toggle_done;
 sigaction(SIGINT, &act, ((void*)0));

 if (!nthreads)
  nthreads = cpu->nr;

 worker = calloc(nthreads, sizeof(*worker));
 if (!worker)
  err(EXIT_FAILURE, "calloc");

 if (!fshared)
  futex_flag = FUTEX_PRIVATE_FLAG;

 printf("Run summary [PID %d]: %d threads doing pi lock/unlock pairing for %d secs.\n\n",
        getpid(), nthreads, nsecs);

 init_stats(&throughput_stats);
 pthread_mutex_init(&thread_lock, ((void*)0));
 pthread_cond_init(&thread_parent, ((void*)0));
 pthread_cond_init(&thread_worker, ((void*)0));

 threads_starting = nthreads;
 pthread_attr_init(&thread_attr);
 gettimeofday(&start, ((void*)0));

 create_threads(worker, thread_attr, cpu);
 pthread_attr_destroy(&thread_attr);

 pthread_mutex_lock(&thread_lock);
 while (threads_starting)
  pthread_cond_wait(&thread_parent, &thread_lock);
 pthread_cond_broadcast(&thread_worker);
 pthread_mutex_unlock(&thread_lock);

 sleep(nsecs);
 toggle_done(0, ((void*)0), ((void*)0));

 for (i = 0; i < nthreads; i++) {
  ret = pthread_join(worker[i].thread, ((void*)0));
  if (ret)
   err(EXIT_FAILURE, "pthread_join");
 }


 pthread_cond_destroy(&thread_parent);
 pthread_cond_destroy(&thread_worker);
 pthread_mutex_destroy(&thread_lock);

 for (i = 0; i < nthreads; i++) {
  unsigned long t = worker[i].ops/runtime.tv_sec;

  update_stats(&throughput_stats, t);
  if (!silent)
   printf("[thread %3d] futex: %p [ %ld ops/sec ]\n",
          worker[i].tid, worker[i].futex, t);

  if (multi)
   zfree(&worker[i].futex);
 }

 print_summary();

 free(worker);
 return ret;
err:
 usage_with_options(bench_futex_lock_pi_usage, options);
 exit(EXIT_FAILURE);
}
