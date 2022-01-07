
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel_runtime {int dummy; } ;
struct evsel {struct evsel_runtime* priv; } ;


 struct evsel_runtime* zalloc (int) ;

__attribute__((used)) static struct evsel_runtime *perf_evsel__get_runtime(struct evsel *evsel)
{
 struct evsel_runtime *r = evsel->priv;

 if (r == ((void*)0)) {
  r = zalloc(sizeof(struct evsel_runtime));
  evsel->priv = r;
 }

 return r;
}
