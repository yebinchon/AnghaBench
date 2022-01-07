
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int bp_type; int bp_addr; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;


 int __perf_evsel__bp_name (char*,size_t,int ,int ) ;
 int perf_evsel__add_modifiers (struct evsel*,char*,size_t) ;

__attribute__((used)) static int perf_evsel__bp_name(struct evsel *evsel, char *bf, size_t size)
{
 struct perf_event_attr *attr = &evsel->core.attr;
 int r = __perf_evsel__bp_name(bf, size, attr->bp_addr, attr->bp_type);
 return r + perf_evsel__add_modifiers(evsel, bf + r, size - r);
}
