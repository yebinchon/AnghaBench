
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int env; } ;
struct perf_session {TYPE_3__* evlist; TYPE_1__ header; } ;
struct perf_sched {int nr_lost_chunks; int nr_lost_events; int nr_events; int tool; int force; } ;
struct perf_data {int force; int mode; int path; } ;
struct evsel_str_handler {char* member_0; int member_1; } ;
struct TYPE_5__ {int * nr_events; int total_lost; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 scalar_t__ IS_ERR (struct perf_session*) ;
 int PERF_DATA_MODE_READ ;
 size_t PERF_RECORD_LOST ;
 int PTR_ERR (struct perf_session*) ;
 int input_name ;
 int perf_session__delete (struct perf_session*) ;
 scalar_t__ perf_session__has_traces (struct perf_session*,char*) ;
 struct perf_session* perf_session__new (struct perf_data*,int,int *) ;
 int perf_session__process_events (struct perf_session*) ;
 scalar_t__ perf_session__set_tracepoints_handlers (struct perf_session*,struct evsel_str_handler const*) ;
 int pr_debug (char*) ;
 int pr_err (char*,int) ;
 int process_sched_migrate_task_event ;
 int process_sched_runtime_event ;
 int process_sched_switch_event ;
 int process_sched_wakeup_event ;
 int symbol__init (int *) ;

__attribute__((used)) static int perf_sched__read_events(struct perf_sched *sched)
{
 const struct evsel_str_handler handlers[] = {
  { "sched:sched_switch", process_sched_switch_event, },
  { "sched:sched_stat_runtime", process_sched_runtime_event, },
  { "sched:sched_wakeup", process_sched_wakeup_event, },
  { "sched:sched_wakeup_new", process_sched_wakeup_event, },
  { "sched:sched_migrate_task", process_sched_migrate_task_event, },
 };
 struct perf_session *session;
 struct perf_data data = {
  .path = input_name,
  .mode = PERF_DATA_MODE_READ,
  .force = sched->force,
 };
 int rc = -1;

 session = perf_session__new(&data, 0, &sched->tool);
 if (IS_ERR(session)) {
  pr_debug("Error creating perf session");
  return PTR_ERR(session);
 }

 symbol__init(&session->header.env);

 if (perf_session__set_tracepoints_handlers(session, handlers))
  goto out_delete;

 if (perf_session__has_traces(session, "record -R")) {
  int err = perf_session__process_events(session);
  if (err) {
   pr_err("Failed to process events, error %d", err);
   goto out_delete;
  }

  sched->nr_events = session->evlist->stats.nr_events[0];
  sched->nr_lost_events = session->evlist->stats.total_lost;
  sched->nr_lost_chunks = session->evlist->stats.nr_events[PERF_RECORD_LOST];
 }

 rc = 0;
out_delete:
 perf_session__delete(session);
 return rc;
}
