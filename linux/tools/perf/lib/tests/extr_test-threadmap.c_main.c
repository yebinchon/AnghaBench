
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;


 int __T_OK ;
 int __T_START ;
 int libperf_init (int ) ;
 int libperf_print ;
 int perf_thread_map__get (struct perf_thread_map*) ;
 struct perf_thread_map* perf_thread_map__new_dummy () ;
 int perf_thread_map__put (struct perf_thread_map*) ;

int main(int argc, char **argv)
{
 struct perf_thread_map *threads;

 __T_START;

 libperf_init(libperf_print);

 threads = perf_thread_map__new_dummy();
 if (!threads)
  return -1;

 perf_thread_map__get(threads);
 perf_thread_map__put(threads);
 perf_thread_map__put(threads);

 __T_OK;
 return 0;
}
