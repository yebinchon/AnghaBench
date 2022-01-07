
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {unsigned int tv_usec; } ;
struct sigaction {int sa_sigaction; int sa_mask; } ;
struct perf_cpu_map {int nr; } ;
typedef int pthread_attr_t ;


 int EXIT_FAILURE ;
 int FUTEX_PRIVATE_FLAG ;
 int SIGINT ;
 scalar_t__ USEC_PER_MSEC ;
 int bench_futex_requeue_usage ;
 unsigned int bench_repeat ;
 int block_threads (int *,int ,struct perf_cpu_map*) ;
 int * calloc (int,int) ;
 int done ;
 int err (int ,char*) ;
 int exit (int ) ;
 int free (int *) ;
 scalar_t__ fshared ;
 int futex1 ;
 int futex2 ;
 scalar_t__ futex_cmp_requeue (int *,int ,int *,int ,int,int ) ;
 int futex_flag ;
 unsigned int futex_wake (int *,unsigned int,int ) ;
 int getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 int init_stats (int *) ;
 int nrequeue ;
 int nthreads ;
 int options ;
 int parse_options (int,char const**,int ,int ,int ) ;
 struct perf_cpu_map* perf_cpu_map__new (int *) ;
 int print_summary () ;
 int printf (char*,unsigned int,unsigned int,...) ;
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
 int requeued_stats ;
 int requeuetime_stats ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigfillset (int *) ;
 int silent ;
 int thread_lock ;
 int thread_parent ;
 int thread_worker ;
 scalar_t__ threads_starting ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 int toggle_done ;
 int update_stats (int *,unsigned int) ;
 int usage_with_options (int ,int ) ;
 int usleep (int) ;
 int warnx (char*,unsigned int,int) ;
 int * worker ;

int bench_futex_requeue(int argc, const char **argv)
{
 int ret = 0;
 unsigned int i, j;
 struct sigaction act;
 pthread_attr_t thread_attr;
 struct perf_cpu_map *cpu;

 argc = parse_options(argc, argv, options, bench_futex_requeue_usage, 0);
 if (argc)
  goto err;

 cpu = perf_cpu_map__new(((void*)0));
 if (!cpu)
  err(EXIT_FAILURE, "cpu_map__new");

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

 if (nrequeue > nthreads)
  nrequeue = nthreads;

 printf("Run summary [PID %d]: Requeuing %d threads (from [%s] %p to %p), "
        "%d at a time.\n\n", getpid(), nthreads,
        fshared ? "shared":"private", &futex1, &futex2, nrequeue);

 init_stats(&requeued_stats);
 init_stats(&requeuetime_stats);
 pthread_attr_init(&thread_attr);
 pthread_mutex_init(&thread_lock, ((void*)0));
 pthread_cond_init(&thread_parent, ((void*)0));
 pthread_cond_init(&thread_worker, ((void*)0));

 for (j = 0; j < bench_repeat && !done; j++) {
  unsigned int nrequeued = 0;
  struct timeval start, end, runtime;


  block_threads(worker, thread_attr, cpu);


  pthread_mutex_lock(&thread_lock);
  while (threads_starting)
   pthread_cond_wait(&thread_parent, &thread_lock);
  pthread_cond_broadcast(&thread_worker);
  pthread_mutex_unlock(&thread_lock);

  usleep(100000);


  gettimeofday(&start, ((void*)0));
  while (nrequeued < nthreads) {




   nrequeued += futex_cmp_requeue(&futex1, 0, &futex2, 0,
             nrequeue, futex_flag);
  }

  gettimeofday(&end, ((void*)0));
  timersub(&end, &start, &runtime);

  update_stats(&requeued_stats, nrequeued);
  update_stats(&requeuetime_stats, runtime.tv_usec);

  if (!silent) {
   printf("[Run %d]: Requeued %d of %d threads in %.4f ms\n",
          j + 1, nrequeued, nthreads, runtime.tv_usec / (double)USEC_PER_MSEC);
  }


  nrequeued = futex_wake(&futex2, nrequeued, futex_flag);
  if (nthreads != nrequeued)
   warnx("couldn't wakeup all tasks (%d/%d)", nrequeued, nthreads);

  for (i = 0; i < nthreads; i++) {
   ret = pthread_join(worker[i], ((void*)0));
   if (ret)
    err(EXIT_FAILURE, "pthread_join");
  }
 }


 pthread_cond_destroy(&thread_parent);
 pthread_cond_destroy(&thread_worker);
 pthread_mutex_destroy(&thread_lock);
 pthread_attr_destroy(&thread_attr);

 print_summary();

 free(worker);
 return ret;
err:
 usage_with_options(bench_futex_requeue_usage, options);
 exit(EXIT_FAILURE);
}
