
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int size; } ;
struct perf_record_auxtrace_info {int type; TYPE_1__ header; } ;
union perf_event {struct perf_record_auxtrace_info auxtrace_info; } ;
struct TYPE_16__ {scalar_t__ populated; } ;
struct TYPE_14__ {int free; int free_events; int flush_events; int process_auxtrace_event; int process_event; } ;
struct s390_cpumsf {int data_queued; int logdir; TYPE_7__ queues; TYPE_5__ auxtrace; int machine_type; int pmu_type; int auxtrace_type; int * machine; struct perf_session* session; scalar_t__ use_logfile; } ;
struct TYPE_11__ {int host; } ;
struct perf_session {TYPE_5__* auxtrace; TYPE_4__* evlist; TYPE_2__ machines; TYPE_6__* itrace_synth_opts; } ;
struct TYPE_15__ {scalar_t__ log; } ;
struct TYPE_13__ {TYPE_3__* env; } ;
struct TYPE_12__ {int cpuid; } ;


 int EINVAL ;
 int ENOMEM ;
 int PERF_TYPE_RAW ;
 int auxtrace_queues__free (TYPE_7__*) ;
 int auxtrace_queues__init (TYPE_7__*) ;
 int auxtrace_queues__process_index (TYPE_7__*,struct perf_session*) ;
 int check_auxtrace_itrace (TYPE_6__*) ;
 scalar_t__ dump_trace ;
 int free (struct s390_cpumsf*) ;
 int perf_config (int ,struct s390_cpumsf*) ;
 int s390_cpumsf__config ;
 int s390_cpumsf_flush ;
 int s390_cpumsf_free ;
 int s390_cpumsf_free_events ;
 int s390_cpumsf_get_type (int ) ;
 int s390_cpumsf_process_auxtrace_event ;
 int s390_cpumsf_process_event ;
 struct s390_cpumsf* zalloc (int) ;
 int zfree (int *) ;

int s390_cpumsf_process_auxtrace_info(union perf_event *event,
          struct perf_session *session)
{
 struct perf_record_auxtrace_info *auxtrace_info = &event->auxtrace_info;
 struct s390_cpumsf *sf;
 int err;

 if (auxtrace_info->header.size < sizeof(struct perf_record_auxtrace_info))
  return -EINVAL;

 sf = zalloc(sizeof(struct s390_cpumsf));
 if (sf == ((void*)0))
  return -ENOMEM;

 if (!check_auxtrace_itrace(session->itrace_synth_opts)) {
  err = -EINVAL;
  goto err_free;
 }
 sf->use_logfile = session->itrace_synth_opts->log;
 if (sf->use_logfile)
  perf_config(s390_cpumsf__config, sf);

 err = auxtrace_queues__init(&sf->queues);
 if (err)
  goto err_free;

 sf->session = session;
 sf->machine = &session->machines.host;
 sf->auxtrace_type = auxtrace_info->type;
 sf->pmu_type = PERF_TYPE_RAW;
 sf->machine_type = s390_cpumsf_get_type(session->evlist->env->cpuid);

 sf->auxtrace.process_event = s390_cpumsf_process_event;
 sf->auxtrace.process_auxtrace_event = s390_cpumsf_process_auxtrace_event;
 sf->auxtrace.flush_events = s390_cpumsf_flush;
 sf->auxtrace.free_events = s390_cpumsf_free_events;
 sf->auxtrace.free = s390_cpumsf_free;
 session->auxtrace = &sf->auxtrace;

 if (dump_trace)
  return 0;

 err = auxtrace_queues__process_index(&sf->queues, session);
 if (err)
  goto err_free_queues;

 if (sf->queues.populated)
  sf->data_queued = 1;

 return 0;

err_free_queues:
 auxtrace_queues__free(&sf->queues);
 session->auxtrace = ((void*)0);
err_free:
 zfree(&sf->logdir);
 free(sf);
 return err;
}
