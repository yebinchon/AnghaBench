
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; int misc; int type; } ;
struct TYPE_8__ {TYPE_2__ header; } ;
union perf_event {TYPE_3__ sample; } ;
typedef void* u64 ;
struct perf_sample {int branch_stack; int cpumode; int flags; int cpu; void* period; int stream_id; int id; int tid; int pid; void* ip; } ;
struct perf_event_header {int dummy; } ;
struct cs_etm_traceid_queue {int last_branch; TYPE_5__* packet; int trace_chan_id; TYPE_1__* prev_packet; int tid; int pid; union perf_event* event_buf; } ;
struct cs_etm_queue {struct cs_etm_auxtrace* etm; } ;
struct TYPE_9__ {scalar_t__ last_branch; scalar_t__ inject; } ;
struct cs_etm_auxtrace {TYPE_4__ synth_opts; int session; int instructions_sample_type; int instructions_id; } ;
struct TYPE_10__ {int cpu; } ;
struct TYPE_6__ {int flags; } ;


 int PERF_RECORD_SAMPLE ;
 int cs_etm__copy_insn (struct cs_etm_queue*,int ,TYPE_5__*,struct perf_sample*) ;
 int cs_etm__copy_last_branch_rb (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ;
 int cs_etm__cpu_mode (struct cs_etm_queue*,void*) ;
 int cs_etm__inject_event (union perf_event*,struct perf_sample*,int ) ;
 int cs_etm__reset_last_branch_rb (struct cs_etm_traceid_queue*) ;
 int perf_session__deliver_synth_event (int ,union perf_event*,struct perf_sample*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
         struct cs_etm_traceid_queue *tidq,
         u64 addr, u64 period)
{
 int ret = 0;
 struct cs_etm_auxtrace *etm = etmq->etm;
 union perf_event *event = tidq->event_buf;
 struct perf_sample sample = {.ip = 0,};

 event->sample.header.type = PERF_RECORD_SAMPLE;
 event->sample.header.misc = cs_etm__cpu_mode(etmq, addr);
 event->sample.header.size = sizeof(struct perf_event_header);

 sample.ip = addr;
 sample.pid = tidq->pid;
 sample.tid = tidq->tid;
 sample.id = etmq->etm->instructions_id;
 sample.stream_id = etmq->etm->instructions_id;
 sample.period = period;
 sample.cpu = tidq->packet->cpu;
 sample.flags = tidq->prev_packet->flags;
 sample.cpumode = event->sample.header.misc;

 cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);

 if (etm->synth_opts.last_branch) {
  cs_etm__copy_last_branch_rb(etmq, tidq);
  sample.branch_stack = tidq->last_branch;
 }

 if (etm->synth_opts.inject) {
  ret = cs_etm__inject_event(event, &sample,
        etm->instructions_sample_type);
  if (ret)
   return ret;
 }

 ret = perf_session__deliver_synth_event(etm->session, event, &sample);

 if (ret)
  pr_err(
   "CS ETM Trace: failed to deliver instruction event, error %d\n",
   ret);

 if (etm->synth_opts.last_branch)
  cs_etm__reset_last_branch_rb(tidq);

 return ret;
}
