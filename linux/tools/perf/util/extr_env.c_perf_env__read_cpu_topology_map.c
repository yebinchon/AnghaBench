
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_env {int nr_cpus_avail; TYPE_1__* cpu; } ;
struct TYPE_2__ {int die_id; int socket_id; int core_id; } ;


 int EINVAL ;
 int ENOMEM ;
 int calloc (int,int) ;
 int cpu__max_present_cpu () ;
 int cpu_map__get_core_id (int) ;
 int cpu_map__get_die_id (int) ;
 int cpu_map__get_socket_id (int) ;

int perf_env__read_cpu_topology_map(struct perf_env *env)
{
 int cpu, nr_cpus;

 if (env->cpu != ((void*)0))
  return 0;

 if (env->nr_cpus_avail == 0)
  env->nr_cpus_avail = cpu__max_present_cpu();

 nr_cpus = env->nr_cpus_avail;
 if (nr_cpus == -1)
  return -EINVAL;

 env->cpu = calloc(nr_cpus, sizeof(env->cpu[0]));
 if (env->cpu == ((void*)0))
  return -ENOMEM;

 for (cpu = 0; cpu < nr_cpus; ++cpu) {
  env->cpu[cpu].core_id = cpu_map__get_core_id(cpu);
  env->cpu[cpu].socket_id = cpu_map__get_socket_id(cpu);
  env->cpu[cpu].die_id = cpu_map__get_die_id(cpu);
 }

 env->nr_cpus_avail = nr_cpus;
 return 0;
}
