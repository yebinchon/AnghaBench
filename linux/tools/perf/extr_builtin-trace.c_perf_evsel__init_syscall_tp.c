
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_tp {int id; } ;
struct evsel {struct syscall_tp* priv; } ;


 int ENOENT ;
 int ENOMEM ;
 struct syscall_tp* malloc (int) ;
 scalar_t__ perf_evsel__init_tp_uint_field (struct evsel*,int *,char*) ;
 int zfree (struct syscall_tp**) ;

__attribute__((used)) static int perf_evsel__init_syscall_tp(struct evsel *evsel)
{
 struct syscall_tp *sc = evsel->priv = malloc(sizeof(struct syscall_tp));

 if (evsel->priv != ((void*)0)) {
  if (perf_evsel__init_tp_uint_field(evsel, &sc->id, "__syscall_nr") &&
      perf_evsel__init_tp_uint_field(evsel, &sc->id, "nr"))
   goto out_delete;
  return 0;
 }

 return -ENOMEM;
out_delete:
 zfree(&evsel->priv);
 return -ENOENT;
}
