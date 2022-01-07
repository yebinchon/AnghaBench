
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct perf_record_auxtrace_info {int * priv; int type; TYPE_1__ header; } ;
union perf_event {struct perf_record_auxtrace_info auxtrace_info; } ;
typedef int u64 ;
struct TYPE_5__ {int host; } ;
struct perf_session {TYPE_3__* auxtrace; TYPE_2__ machines; } ;
struct TYPE_6__ {int free; int free_events; int flush_events; int process_auxtrace_event; int process_event; } ;
struct arm_spe {TYPE_3__ auxtrace; int pmu_type; int auxtrace_type; int * machine; struct perf_session* session; int queues; } ;


 int ARM_SPE_PMU_TYPE ;
 int EINVAL ;
 int ENOMEM ;
 int arm_spe_flush ;
 int arm_spe_free ;
 int arm_spe_free_events ;
 int arm_spe_print_info (int *) ;
 int arm_spe_process_auxtrace_event ;
 int arm_spe_process_event ;
 int auxtrace_queues__init (int *) ;
 int free (struct arm_spe*) ;
 struct arm_spe* zalloc (int) ;

int arm_spe_process_auxtrace_info(union perf_event *event,
      struct perf_session *session)
{
 struct perf_record_auxtrace_info *auxtrace_info = &event->auxtrace_info;
 size_t min_sz = sizeof(u64) * ARM_SPE_PMU_TYPE;
 struct arm_spe *spe;
 int err;

 if (auxtrace_info->header.size < sizeof(struct perf_record_auxtrace_info) +
     min_sz)
  return -EINVAL;

 spe = zalloc(sizeof(struct arm_spe));
 if (!spe)
  return -ENOMEM;

 err = auxtrace_queues__init(&spe->queues);
 if (err)
  goto err_free;

 spe->session = session;
 spe->machine = &session->machines.host;
 spe->auxtrace_type = auxtrace_info->type;
 spe->pmu_type = auxtrace_info->priv[ARM_SPE_PMU_TYPE];

 spe->auxtrace.process_event = arm_spe_process_event;
 spe->auxtrace.process_auxtrace_event = arm_spe_process_auxtrace_event;
 spe->auxtrace.flush_events = arm_spe_flush;
 spe->auxtrace.free_events = arm_spe_free_events;
 spe->auxtrace.free = arm_spe_free;
 session->auxtrace = &spe->auxtrace;

 arm_spe_print_info(&auxtrace_info->priv[0]);

 return 0;

err_free:
 free(spe);
 return err;
}
