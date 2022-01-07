
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_thread_map {TYPE_1__* map; } ;
typedef int pid_t ;
struct TYPE_2__ {char* comm; } ;


 scalar_t__ get_comm (char**,int) ;
 int perf_thread_map__pid (struct perf_thread_map*,int) ;
 int pr_warning (char*,int) ;
 char* strdup (char*) ;

__attribute__((used)) static void comm_init(struct perf_thread_map *map, int i)
{
 pid_t pid = perf_thread_map__pid(map, i);
 char *comm = ((void*)0);


 if (pid == -1) {
  map->map[i].comm = strdup("dummy");
  return;
 }





 if (get_comm(&comm, pid))
  pr_warning("Couldn't resolve comm name for pid %d\n", pid);

 map->map[i].comm = comm;
}
