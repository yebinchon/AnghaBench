
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ config; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;



__attribute__((used)) static inline bool perf_evsel__match2(struct evsel *e1,
          struct evsel *e2)
{
 return (e1->core.attr.type == e2->core.attr.type) &&
        (e1->core.attr.config == e2->core.attr.config);
}
