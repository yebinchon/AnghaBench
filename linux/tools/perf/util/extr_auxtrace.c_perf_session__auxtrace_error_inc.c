
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_record_auxtrace_error {size_t type; } ;
union perf_event {struct perf_record_auxtrace_error auxtrace_error; } ;
struct perf_session {TYPE_2__* evlist; } ;
struct TYPE_3__ {int* nr_auxtrace_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 size_t PERF_AUXTRACE_ERROR_MAX ;

void perf_session__auxtrace_error_inc(struct perf_session *session,
          union perf_event *event)
{
 struct perf_record_auxtrace_error *e = &event->auxtrace_error;

 if (e->type < PERF_AUXTRACE_ERROR_MAX)
  session->evlist->stats.nr_auxtrace_errors[e->type] += 1;
}
