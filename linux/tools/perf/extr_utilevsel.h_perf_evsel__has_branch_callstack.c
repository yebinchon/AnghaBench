
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int branch_sample_type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 int PERF_SAMPLE_BRANCH_CALL_STACK ;

__attribute__((used)) static inline bool perf_evsel__has_branch_callstack(const struct evsel *evsel)
{
 return evsel->core.attr.branch_sample_type & PERF_SAMPLE_BRANCH_CALL_STACK;
}
