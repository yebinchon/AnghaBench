
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * threads; int * cpus; } ;
struct evlist {TYPE_1__ core; } ;


 int evlist__close (struct evlist*) ;
 int evlist__exit (struct evlist*) ;
 int evlist__munmap (struct evlist*) ;
 int evlist__purge (struct evlist*) ;
 int free (struct evlist*) ;
 int perf_cpu_map__put (int *) ;
 int perf_thread_map__put (int *) ;

void evlist__delete(struct evlist *evlist)
{
 if (evlist == ((void*)0))
  return;

 evlist__munmap(evlist);
 evlist__close(evlist);
 perf_cpu_map__put(evlist->core.cpus);
 perf_thread_map__put(evlist->core.threads);
 evlist->core.cpus = ((void*)0);
 evlist->core.threads = ((void*)0);
 evlist__purge(evlist);
 evlist__exit(evlist);
 free(evlist);
}
