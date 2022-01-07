
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; int (* init ) (struct evsel*) ;void (* fini ) (struct evsel*) ;} ;


 int EINVAL ;
 TYPE_1__ perf_evsel__object ;

int perf_evsel__object_config(size_t object_size,
         int (*init)(struct evsel *evsel),
         void (*fini)(struct evsel *evsel))
{

 if (object_size == 0)
  goto set_methods;

 if (perf_evsel__object.size > object_size)
  return -EINVAL;

 perf_evsel__object.size = object_size;

set_methods:
 if (init != ((void*)0))
  perf_evsel__object.init = init;

 if (fini != ((void*)0))
  perf_evsel__object.fini = fini;

 return 0;
}
