
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct perf_tool {int ordered_events; int namespaces; int comm; int sample; } ;
struct perf_data {int force; int mode; int path; } ;
struct TYPE_10__ {int env; } ;
struct TYPE_11__ {TYPE_1__ header; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PERF_DATA_MODE_READ ;
 int PTR_ERR (TYPE_2__*) ;
 int dump_info () ;
 int force ;
 int input_name ;
 int lock_tracepoints ;
 int perf_event__process_comm ;
 int perf_event__process_namespaces ;
 int perf_session__delete (TYPE_2__*) ;
 int perf_session__has_traces (TYPE_2__*,char*) ;
 TYPE_2__* perf_session__new (struct perf_data*,int,struct perf_tool*) ;
 int perf_session__process_events (TYPE_2__*) ;
 scalar_t__ perf_session__set_tracepoints_handlers (TYPE_2__*,int ) ;
 int pr_err (char*) ;
 int print_result () ;
 int process_sample_event ;
 scalar_t__ select_key () ;
 TYPE_2__* session ;
 int setup_pager () ;
 int sort_result () ;
 int symbol__init (int *) ;

__attribute__((used)) static int __cmd_report(bool display_info)
{
 int err = -EINVAL;
 struct perf_tool eops = {
  .sample = process_sample_event,
  .comm = perf_event__process_comm,
  .namespaces = perf_event__process_namespaces,
  .ordered_events = 1,
 };
 struct perf_data data = {
  .path = input_name,
  .mode = PERF_DATA_MODE_READ,
  .force = force,
 };

 session = perf_session__new(&data, 0, &eops);
 if (IS_ERR(session)) {
  pr_err("Initializing perf session failed\n");
  return PTR_ERR(session);
 }

 symbol__init(&session->header.env);

 if (!perf_session__has_traces(session, "lock record"))
  goto out_delete;

 if (perf_session__set_tracepoints_handlers(session, lock_tracepoints)) {
  pr_err("Initializing perf session tracepoint handlers failed\n");
  goto out_delete;
 }

 if (select_key())
  goto out_delete;

 err = perf_session__process_events(session);
 if (err)
  goto out_delete;

 setup_pager();
 if (display_info)
  err = dump_info();
 else {
  sort_result();
  print_result();
 }

out_delete:
 perf_session__delete(session);
 return err;
}
