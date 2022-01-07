
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 int __perf_evsel__hw_name (int ) ;
 int perf_evsel__add_modifiers (struct evsel*,char*,size_t) ;
 int scnprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static int perf_evsel__hw_name(struct evsel *evsel, char *bf, size_t size)
{
 int r = scnprintf(bf, size, "%s", __perf_evsel__hw_name(evsel->core.attr.config));
 return r + perf_evsel__add_modifiers(evsel, bf + r, size - r);
}
