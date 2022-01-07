
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sample_type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 int PERF_SAMPLE_CALLCHAIN ;

__attribute__((used)) static inline bool evsel__has_callchain(const struct evsel *evsel)
{
 return (evsel->core.attr.sample_type & PERF_SAMPLE_CALLCHAIN) != 0;
}
