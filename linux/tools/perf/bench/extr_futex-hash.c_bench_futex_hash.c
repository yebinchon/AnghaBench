
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker {int nr; unsigned int tid; unsigned long ops; int * futex; int thread; int * map; } ;
struct sigaction {int (* sa_sigaction ) (int ,int *,int *) ;int sa_mask; } ;
struct perf_cpu_map {int nr; unsigned int tid; unsigned long ops; int * futex; int thread; int * map; } ;
typedef int pthread_attr_t ;
typedef int cpu_set_t ;
struct TYPE_2__ {unsigned long tv_sec; } ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int EXIT_FAILURE ;
 int FUTEX_PRIVATE_FLAG ;
 int SIGINT ;
 int bench_futex_hash_usage ;
 void* calloc (int,int) ;
 int err (int ,char*) ;
 int exit (int ) ;
 int free (struct worker*) ;
 scalar_t__ fshared ;
 int futex_flag ;
 int getpid () ;
 int gettimeofday (int *,int *) ;
 int init_stats (int *) ;
 int nfutexes ;
 int nsecs ;
 int nthreads ;
 int options ;
 int parse_options (int,char const**,int ,int ,int ) ;
 struct worker* perf_cpu_map__new (int *) ;
 int print_summary () ;
 int printf (char*,int,int,int,...) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setaffinity_np (int *,int,int *) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__ runtime ;
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
 int workerfn ;
 int zfree (int **) ;

int bench_futex_hash(int argc, const char **argv)
{
 int ret = 0;
 cpu_set_t cpuset;
 struct sigaction act;
 unsigned int i;
 pthread_attr_t thread_attr;
 struct worker *worker = ((void*)0);
 struct perf_cpu_map *cpu;

 argc = parse_options(argc, argv, options, bench_futex_hash_usage, 0);
 if (argc) {
  usage_with_options(bench_futex_hash_usage, options);
  exit(EXIT_FAILURE);
 }

 cpu = perf_cpu_map__new(((void*)0));
 if (!cpu)
  goto errmem;

 sigfillset(&act.sa_mask);
 act.sa_sigaction = toggle_done;
 sigaction(SIGINT, &act, ((void*)0));

 if (!nthreads)
  nthreads = cpu->nr;

 worker = calloc(nthreads, sizeof(*worker));
 if (!worker)
  goto errmem;

 if (!fshared)
  futex_flag = FUTEX_PRIVATE_FLAG;

 printf("Run summary [PID %d]: %d threads, each operating on %d [%s] futexes for %d secs.\n\n",
        getpid(), nthreads, nfutexes, fshared ? "shared":"private", nsecs);

 init_stats(&throughput_stats);
 pthread_mutex_init(&thread_lock, ((void*)0));
 pthread_cond_init(&thread_parent, ((void*)0));
 pthread_cond_init(&thread_worker, ((void*)0));

 threads_starting = nthreads;
 pthread_attr_init(&thread_attr);
 gettimeofday(&start, ((void*)0));
 for (i = 0; i < nthreads; i++) {
  worker[i].tid = i;
  worker[i].futex = calloc(nfutexes, sizeof(*worker[i].futex));
  if (!worker[i].futex)
   goto errmem;

  CPU_ZERO(&cpuset);
  CPU_SET(cpu->map[i % cpu->nr], &cpuset);

  ret = pthread_attr_setaffinity_np(&thread_attr, sizeof(cpu_set_t), &cpuset);
  if (ret)
   err(EXIT_FAILURE, "pthread_attr_setaffinity_np");

  ret = pthread_create(&worker[i].thread, &thread_attr, workerfn,
         (void *)(struct worker *) &worker[i]);
  if (ret)
   err(EXIT_FAILURE, "pthread_create");

 }
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
  if (!silent) {
   if (nfutexes == 1)
    printf("[thread %2d] futex: %p [ %ld ops/sec ]\n",
           worker[i].tid, &worker[i].futex[0], t);
   else
    printf("[thread %2d] futexes: %p ... %p [ %ld ops/sec ]\n",
           worker[i].tid, &worker[i].futex[0],
           &worker[i].futex[nfutexes-1], t);
  }

  zfree(&worker[i].futex);
 }

 print_summary();

 free(worker);
 free(cpu);
 return ret;
errmem:
 err(EXIT_FAILURE, "calloc");
}
