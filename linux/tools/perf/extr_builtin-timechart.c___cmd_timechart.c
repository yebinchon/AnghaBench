
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timechart {double last_time; double first_time; int tool; int force; } ;
struct TYPE_2__ {int env; } ;
struct perf_session {int data; TYPE_1__ header; } ;
struct perf_data {int force; int mode; int path; } ;
struct evsel_str_handler {char* member_0; int member_1; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct perf_session*) ;
 scalar_t__ NSEC_PER_SEC ;
 int PERF_DATA_MODE_READ ;
 int PTR_ERR (struct perf_session*) ;
 int end_sample_processing (struct timechart*) ;
 int input_name ;
 int perf_data__fd (int ) ;
 int perf_header__process_sections (TYPE_1__*,int ,struct timechart*,int ) ;
 int perf_session__delete (struct perf_session*) ;
 int perf_session__has_traces (struct perf_session*,char*) ;
 struct perf_session* perf_session__new (struct perf_data*,int,int *) ;
 int perf_session__process_events (struct perf_session*) ;
 scalar_t__ perf_session__set_tracepoints_handlers (struct perf_session*,struct evsel_str_handler const*) ;
 int pr_err (char*) ;
 int pr_info (char*,double,char const*) ;
 int process_enter_poll ;
 int process_enter_read ;
 int process_enter_rx ;
 int process_enter_sync ;
 int process_enter_tx ;
 int process_enter_write ;
 int process_exit_poll ;
 int process_exit_read ;
 int process_exit_rx ;
 int process_exit_sync ;
 int process_exit_tx ;
 int process_exit_write ;
 int process_header ;
 int process_sample_cpu_frequency ;
 int process_sample_cpu_idle ;
 int process_sample_power_end ;
 int process_sample_power_frequency ;
 int process_sample_power_start ;
 int process_sample_sched_switch ;
 int process_sample_sched_wakeup ;
 int sort_pids (struct timechart*) ;
 int symbol__init (int *) ;
 int write_svg_file (struct timechart*,char const*) ;

__attribute__((used)) static int __cmd_timechart(struct timechart *tchart, const char *output_name)
{
 const struct evsel_str_handler power_tracepoints[] = {
  { "power:cpu_idle", process_sample_cpu_idle },
  { "power:cpu_frequency", process_sample_cpu_frequency },
  { "sched:sched_wakeup", process_sample_sched_wakeup },
  { "sched:sched_switch", process_sample_sched_switch },






  { "syscalls:sys_enter_read", process_enter_read },
  { "syscalls:sys_enter_pread64", process_enter_read },
  { "syscalls:sys_enter_readv", process_enter_read },
  { "syscalls:sys_enter_preadv", process_enter_read },
  { "syscalls:sys_enter_write", process_enter_write },
  { "syscalls:sys_enter_pwrite64", process_enter_write },
  { "syscalls:sys_enter_writev", process_enter_write },
  { "syscalls:sys_enter_pwritev", process_enter_write },
  { "syscalls:sys_enter_sync", process_enter_sync },
  { "syscalls:sys_enter_sync_file_range", process_enter_sync },
  { "syscalls:sys_enter_fsync", process_enter_sync },
  { "syscalls:sys_enter_msync", process_enter_sync },
  { "syscalls:sys_enter_recvfrom", process_enter_rx },
  { "syscalls:sys_enter_recvmmsg", process_enter_rx },
  { "syscalls:sys_enter_recvmsg", process_enter_rx },
  { "syscalls:sys_enter_sendto", process_enter_tx },
  { "syscalls:sys_enter_sendmsg", process_enter_tx },
  { "syscalls:sys_enter_sendmmsg", process_enter_tx },
  { "syscalls:sys_enter_epoll_pwait", process_enter_poll },
  { "syscalls:sys_enter_epoll_wait", process_enter_poll },
  { "syscalls:sys_enter_poll", process_enter_poll },
  { "syscalls:sys_enter_ppoll", process_enter_poll },
  { "syscalls:sys_enter_pselect6", process_enter_poll },
  { "syscalls:sys_enter_select", process_enter_poll },

  { "syscalls:sys_exit_read", process_exit_read },
  { "syscalls:sys_exit_pread64", process_exit_read },
  { "syscalls:sys_exit_readv", process_exit_read },
  { "syscalls:sys_exit_preadv", process_exit_read },
  { "syscalls:sys_exit_write", process_exit_write },
  { "syscalls:sys_exit_pwrite64", process_exit_write },
  { "syscalls:sys_exit_writev", process_exit_write },
  { "syscalls:sys_exit_pwritev", process_exit_write },
  { "syscalls:sys_exit_sync", process_exit_sync },
  { "syscalls:sys_exit_sync_file_range", process_exit_sync },
  { "syscalls:sys_exit_fsync", process_exit_sync },
  { "syscalls:sys_exit_msync", process_exit_sync },
  { "syscalls:sys_exit_recvfrom", process_exit_rx },
  { "syscalls:sys_exit_recvmmsg", process_exit_rx },
  { "syscalls:sys_exit_recvmsg", process_exit_rx },
  { "syscalls:sys_exit_sendto", process_exit_tx },
  { "syscalls:sys_exit_sendmsg", process_exit_tx },
  { "syscalls:sys_exit_sendmmsg", process_exit_tx },
  { "syscalls:sys_exit_epoll_pwait", process_exit_poll },
  { "syscalls:sys_exit_epoll_wait", process_exit_poll },
  { "syscalls:sys_exit_poll", process_exit_poll },
  { "syscalls:sys_exit_ppoll", process_exit_poll },
  { "syscalls:sys_exit_pselect6", process_exit_poll },
  { "syscalls:sys_exit_select", process_exit_poll },
 };
 struct perf_data data = {
  .path = input_name,
  .mode = PERF_DATA_MODE_READ,
  .force = tchart->force,
 };

 struct perf_session *session = perf_session__new(&data, 0,
        &tchart->tool);
 int ret = -EINVAL;

 if (IS_ERR(session))
  return PTR_ERR(session);

 symbol__init(&session->header.env);

 (void)perf_header__process_sections(&session->header,
         perf_data__fd(session->data),
         tchart,
         process_header);

 if (!perf_session__has_traces(session, "timechart record"))
  goto out_delete;

 if (perf_session__set_tracepoints_handlers(session,
         power_tracepoints)) {
  pr_err("Initializing session tracepoint handlers failed\n");
  goto out_delete;
 }

 ret = perf_session__process_events(session);
 if (ret)
  goto out_delete;

 end_sample_processing(tchart);

 sort_pids(tchart);

 write_svg_file(tchart, output_name);

 pr_info("Written %2.1f seconds of trace to %s.\n",
  (tchart->last_time - tchart->first_time) / (double)NSEC_PER_SEC, output_name);
out_delete:
 perf_session__delete(session);
 return ret;
}
