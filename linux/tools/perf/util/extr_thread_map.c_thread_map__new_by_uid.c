
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct perf_thread_map {int dummy; } ;


 struct perf_thread_map* __thread_map__new_all_cpus (int ) ;

struct perf_thread_map *thread_map__new_by_uid(uid_t uid)
{
 return __thread_map__new_all_cpus(uid);
}
