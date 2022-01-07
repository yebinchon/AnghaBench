
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct worker {int thread; } ;
struct perf_cpu_map {unsigned int nr; int * map; } ;
typedef int pthread_attr_t ;
typedef int cpu_set_t ;
struct TYPE_3__ {unsigned int tid; int * futex; } ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int EXIT_FAILURE ;
 int * calloc (int,int) ;
 int err (int ,char*) ;
 int global_futex ;
 scalar_t__ multi ;
 unsigned int nthreads ;
 scalar_t__ pthread_attr_setaffinity_np (int *,int,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,TYPE_1__*) ;
 unsigned int threads_starting ;
 TYPE_1__* worker ;
 int workerfn ;

__attribute__((used)) static void create_threads(struct worker *w, pthread_attr_t thread_attr,
      struct perf_cpu_map *cpu)
{
 cpu_set_t cpuset;
 unsigned int i;

 threads_starting = nthreads;

 for (i = 0; i < nthreads; i++) {
  worker[i].tid = i;

  if (multi) {
   worker[i].futex = calloc(1, sizeof(u_int32_t));
   if (!worker[i].futex)
    err(EXIT_FAILURE, "calloc");
  } else
   worker[i].futex = &global_futex;

  CPU_ZERO(&cpuset);
  CPU_SET(cpu->map[i % cpu->nr], &cpuset);

  if (pthread_attr_setaffinity_np(&thread_attr, sizeof(cpu_set_t), &cpuset))
   err(EXIT_FAILURE, "pthread_attr_setaffinity_np");

  if (pthread_create(&w[i].thread, &thread_attr, workerfn, &worker[i]))
   err(EXIT_FAILURE, "pthread_create");
 }
}
