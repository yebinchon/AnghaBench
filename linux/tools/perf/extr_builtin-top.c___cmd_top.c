
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef scalar_t__ u64 ;
struct sched_param {scalar_t__ sched_priority; } ;
struct record_opts {scalar_t__ overwrite; int target; scalar_t__ record_namespaces; } ;
struct TYPE_19__ {int cond; } ;
struct TYPE_16__ {int namespace_events; } ;
struct TYPE_15__ {int objdump_path; } ;
struct perf_top {int nr_threads_synthesize; scalar_t__ samples; TYPE_6__ qe; TYPE_11__* evlist; scalar_t__ realtime_prio; TYPE_7__* session; struct record_opts record_opts; TYPE_3__ tool; TYPE_2__ annotation_opts; } ;
typedef int pthread_t ;
typedef int errbuf ;
struct TYPE_21__ {scalar_t__ socket; } ;
struct TYPE_17__ {int host; } ;
struct TYPE_14__ {int env; } ;
struct TYPE_20__ {TYPE_11__* evlist; TYPE_4__ machines; TYPE_1__ header; } ;
struct TYPE_18__ {int threads; } ;
struct TYPE_13__ {TYPE_5__ core; } ;


 int BUFSIZ ;
 int SCHED_FIFO ;
 int callchain_param ;
 int callchain_param__setup_sample_type (int *) ;
 int display_thread ;
 int display_thread_tui ;
 int done ;
 int evlist__enable (TYPE_11__*) ;
 int evlist__poll (TYPE_11__*,int) ;
 int init_process_thread (struct perf_top*) ;
 int machine__synthesize_threads (int *,int *,int ,int,int) ;
 int perf_env ;
 int perf_env__lookup_objdump (int *,int *) ;
 int perf_env__read_cpu_topology_map (int *) ;
 int perf_event__process ;
 int perf_event__synthesize_bpf_events (TYPE_7__*,int ,int *,struct record_opts*) ;
 TYPE_9__ perf_hpp_list ;
 scalar_t__ perf_session__register_idle_thread (TYPE_7__*) ;
 int perf_session__set_id_hdr_size (TYPE_7__*) ;
 int perf_set_multithreaded () ;
 int perf_set_singlethreaded () ;
 int perf_top__mmap_read (struct perf_top*) ;
 int perf_top__resize (struct perf_top*) ;
 int perf_top__start_counters (struct perf_top*) ;
 int pr_debug (char*) ;
 int process_thread ;
 int pthread_cond_signal (int *) ;
 scalar_t__ pthread_create (int *,int *,int ,struct perf_top*) ;
 int pthread_join (int ,int *) ;
 scalar_t__ resize ;
 scalar_t__ sched_setscheduler (int ,int ,struct sched_param*) ;
 char* str_error_r (int,char*,int) ;
 int target__none (int *) ;
 int ui__error (char*,...) ;
 scalar_t__ use_browser ;

__attribute__((used)) static int __cmd_top(struct perf_top *top)
{
 struct record_opts *opts = &top->record_opts;
 pthread_t thread, thread_process;
 int ret;

 if (!top->annotation_opts.objdump_path) {
  ret = perf_env__lookup_objdump(&top->session->header.env,
            &top->annotation_opts.objdump_path);
  if (ret)
   return ret;
 }

 ret = callchain_param__setup_sample_type(&callchain_param);
 if (ret)
  return ret;

 if (perf_session__register_idle_thread(top->session) < 0)
  return ret;

 if (top->nr_threads_synthesize > 1)
  perf_set_multithreaded();

 init_process_thread(top);

 if (opts->record_namespaces)
  top->tool.namespace_events = 1;

 ret = perf_event__synthesize_bpf_events(top->session, perf_event__process,
      &top->session->machines.host,
      &top->record_opts);
 if (ret < 0)
  pr_debug("Couldn't synthesize BPF events: Pre-existing BPF programs won't have symbols resolved.\n");

 machine__synthesize_threads(&top->session->machines.host, &opts->target,
        top->evlist->core.threads, 0,
        top->nr_threads_synthesize);

 if (top->nr_threads_synthesize > 1)
  perf_set_singlethreaded();

 if (perf_hpp_list.socket) {
  ret = perf_env__read_cpu_topology_map(&perf_env);
  if (ret < 0) {
   char errbuf[BUFSIZ];
   const char *err = str_error_r(-ret, errbuf, sizeof(errbuf));

   ui__error("Could not read the CPU topology map: %s\n", err);
   return ret;
  }
 }

 ret = perf_top__start_counters(top);
 if (ret)
  return ret;

 top->session->evlist = top->evlist;
 perf_session__set_id_hdr_size(top->session);
        if (!target__none(&opts->target))
  evlist__enable(top->evlist);

 ret = -1;
 if (pthread_create(&thread_process, ((void*)0), process_thread, top)) {
  ui__error("Could not create process thread.\n");
  return ret;
 }

 if (pthread_create(&thread, ((void*)0), (use_browser > 0 ? display_thread_tui :
           display_thread), top)) {
  ui__error("Could not create display thread.\n");
  goto out_join_thread;
 }

 if (top->realtime_prio) {
  struct sched_param param;

  param.sched_priority = top->realtime_prio;
  if (sched_setscheduler(0, SCHED_FIFO, &param)) {
   ui__error("Could not set realtime priority.\n");
   goto out_join;
  }
 }


 evlist__poll(top->evlist, 100);

 perf_top__mmap_read(top);

 while (!done) {
  u64 hits = top->samples;

  perf_top__mmap_read(top);

  if (opts->overwrite || (hits == top->samples))
   ret = evlist__poll(top->evlist, 100);

  if (resize) {
   perf_top__resize(top);
   resize = 0;
  }
 }

 ret = 0;
out_join:
 pthread_join(thread, ((void*)0));
out_join_thread:
 pthread_cond_signal(&top->qe.cond);
 pthread_join(thread_process, ((void*)0));
 return ret;
}
