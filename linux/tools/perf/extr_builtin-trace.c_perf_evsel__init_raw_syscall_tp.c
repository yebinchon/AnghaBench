
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_tp {int dummy; } ;
struct evsel {int * priv; void* handler; } ;


 int ENOENT ;
 int ENOMEM ;
 int id ;
 int * malloc (int) ;
 scalar_t__ perf_evsel__init_sc_tp_uint_field (struct evsel*,int ) ;
 int zfree (int **) ;

__attribute__((used)) static int perf_evsel__init_raw_syscall_tp(struct evsel *evsel, void *handler)
{
 evsel->priv = malloc(sizeof(struct syscall_tp));
 if (evsel->priv != ((void*)0)) {
  if (perf_evsel__init_sc_tp_uint_field(evsel, id))
   goto out_delete;

  evsel->handler = handler;
  return 0;
 }

 return -ENOMEM;

out_delete:
 zfree(&evsel->priv);
 return -ENOENT;
}
