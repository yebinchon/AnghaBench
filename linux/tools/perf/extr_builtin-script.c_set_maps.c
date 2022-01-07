
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_script {int allocated; int threads; int cpus; TYPE_1__* session; } ;
struct evlist {int core; } ;
struct TYPE_2__ {struct evlist* evlist; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ONCE (int,char*) ;
 scalar_t__ perf_evlist__alloc_stats (struct evlist*,int) ;
 int perf_evlist__set_maps (int *,int ,int ) ;

__attribute__((used)) static int set_maps(struct perf_script *script)
{
 struct evlist *evlist = script->session->evlist;

 if (!script->cpus || !script->threads)
  return 0;

 if (WARN_ONCE(script->allocated, "stats double allocation\n"))
  return -EINVAL;

 perf_evlist__set_maps(&evlist->core, script->cpus, script->threads);

 if (perf_evlist__alloc_stats(evlist, 1))
  return -ENOMEM;

 script->allocated = 1;
 return 0;
}
