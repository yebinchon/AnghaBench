
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;


 int UINT_MAX ;
 struct perf_thread_map* __thread_map__new_all_cpus (int ) ;

struct perf_thread_map *thread_map__new_all_cpus(void)
{
 return __thread_map__new_all_cpus(UINT_MAX);
}
