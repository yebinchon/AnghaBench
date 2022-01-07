
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_data {int cpu_id; } ;
struct pkg_data {int package_id; } ;
struct core_data {int core_id; } ;
struct TYPE_2__ {int cores_per_node; int nodes_per_pkg; int num_packages; int threads_per_core; } ;


 void* calloc (int,int) ;
 int err (int,char*) ;
 TYPE_1__ topo ;

void
allocate_counters(struct thread_data **t, struct core_data **c,
    struct pkg_data **p)
{
 int i;
 int num_cores = topo.cores_per_node * topo.nodes_per_pkg *
   topo.num_packages;
 int num_threads = topo.threads_per_core * num_cores;

 *t = calloc(num_threads, sizeof(struct thread_data));
 if (*t == ((void*)0))
  goto error;

 for (i = 0; i < num_threads; i++)
  (*t)[i].cpu_id = -1;

 *c = calloc(num_cores, sizeof(struct core_data));
 if (*c == ((void*)0))
  goto error;

 for (i = 0; i < num_cores; i++)
  (*c)[i].core_id = -1;

 *p = calloc(topo.num_packages, sizeof(struct pkg_data));
 if (*p == ((void*)0))
  goto error;

 for (i = 0; i < topo.num_packages; i++)
  (*p)[i].package_id = i;

 return;
error:
 err(1, "calloc counters");
}
