
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pyrf_event {TYPE_3__* evsel; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct TYPE_6__ {TYPE_2__ core; } ;


 scalar_t__ PERF_TYPE_TRACEPOINT ;

__attribute__((used)) static bool is_tracepoint(struct pyrf_event *pevent)
{
 return pevent->evsel->core.attr.type == PERF_TYPE_TRACEPOINT;
}
