
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {unsigned int nr; int * map; } ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int cpu_set_t ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int EXIT_FAILURE ;
 int err (int ,char*) ;
 unsigned int nthreads ;
 scalar_t__ pthread_attr_setaffinity_np (int *,int,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 unsigned int threads_starting ;
 int workerfn ;

__attribute__((used)) static void block_threads(pthread_t *w,
     pthread_attr_t thread_attr, struct perf_cpu_map *cpu)
{
 cpu_set_t cpuset;
 unsigned int i;

 threads_starting = nthreads;


 for (i = 0; i < nthreads; i++) {
  CPU_ZERO(&cpuset);
  CPU_SET(cpu->map[i % cpu->nr], &cpuset);

  if (pthread_attr_setaffinity_np(&thread_attr, sizeof(cpu_set_t), &cpuset))
   err(EXIT_FAILURE, "pthread_attr_setaffinity_np");

  if (pthread_create(&w[i], &thread_attr, workerfn, ((void*)0)))
   err(EXIT_FAILURE, "pthread_create");
 }
}
