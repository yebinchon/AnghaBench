
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ config; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 scalar_t__ PERF_COUNT_SW_DUMMY ;
 scalar_t__ PERF_TYPE_SOFTWARE ;

__attribute__((used)) static bool is_dummy_event(struct evsel *evsel)
{
 return (evsel->core.attr.type == PERF_TYPE_SOFTWARE) &&
        (evsel->core.attr.config == PERF_COUNT_SW_DUMMY);
}
