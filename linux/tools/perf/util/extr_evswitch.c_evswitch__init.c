
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evswitch {int discarding; scalar_t__ off_name; int * off; scalar_t__ on_name; int * on; } ;
struct evlist {int dummy; } ;
typedef int FILE ;


 int ENOENT ;
 int evswitch__fprintf_enoent (int *,char*,scalar_t__) ;
 void* perf_evlist__find_evsel_by_str (struct evlist*,scalar_t__) ;

int evswitch__init(struct evswitch *evswitch, struct evlist *evlist, FILE *fp)
{
 if (evswitch->on_name) {
  evswitch->on = perf_evlist__find_evsel_by_str(evlist, evswitch->on_name);
  if (evswitch->on == ((void*)0)) {
   evswitch__fprintf_enoent(fp, "on", evswitch->on_name);
   return -ENOENT;
  }
  evswitch->discarding = 1;
 }

 if (evswitch->off_name) {
  evswitch->off = perf_evlist__find_evsel_by_str(evlist, evswitch->off_name);
  if (evswitch->off == ((void*)0)) {
   evswitch__fprintf_enoent(fp, "off", evswitch->off_name);
   return -ENOENT;
  }
 }

 return 0;
}
