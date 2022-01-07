
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int size; int misc; int type; } ;
struct TYPE_8__ {TYPE_3__ header; } ;
union perf_event {TYPE_4__ sample; } ;
struct perf_sample {int period; int cpumode; int insn; int insn_len; int flags; int cpu; int stream_id; int id; void* addr; int tid; int pid; void* ip; } ;
struct perf_event_header {int dummy; } ;
struct TYPE_5__ {int buf; int length; } ;
struct intel_bts_queue {TYPE_1__ intel_pt_insn; int sample_flags; int cpu; struct intel_bts* bts; int tid; int pid; } ;
struct TYPE_6__ {scalar_t__ initial_skip; scalar_t__ inject; } ;
struct intel_bts {int branches_event_size; int session; int branches_sample_type; TYPE_2__ synth_opts; int branches_id; int num_events; } ;
struct branch {int to; int from; } ;


 int INTEL_PT_INSN_BUF_SZ ;
 int PERF_RECORD_SAMPLE ;
 int intel_bts_cpumode (struct intel_bts*,void*) ;
 void* le64_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int perf_event__synthesize_sample (union perf_event*,int ,int ,struct perf_sample*) ;
 int perf_session__deliver_synth_event (int ,union perf_event*,struct perf_sample*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int intel_bts_synth_branch_sample(struct intel_bts_queue *btsq,
      struct branch *branch)
{
 int ret;
 struct intel_bts *bts = btsq->bts;
 union perf_event event;
 struct perf_sample sample = { .ip = 0, };

 if (bts->synth_opts.initial_skip &&
     bts->num_events++ <= bts->synth_opts.initial_skip)
  return 0;

 sample.ip = le64_to_cpu(branch->from);
 sample.cpumode = intel_bts_cpumode(bts, sample.ip);
 sample.pid = btsq->pid;
 sample.tid = btsq->tid;
 sample.addr = le64_to_cpu(branch->to);
 sample.id = btsq->bts->branches_id;
 sample.stream_id = btsq->bts->branches_id;
 sample.period = 1;
 sample.cpu = btsq->cpu;
 sample.flags = btsq->sample_flags;
 sample.insn_len = btsq->intel_pt_insn.length;
 memcpy(sample.insn, btsq->intel_pt_insn.buf, INTEL_PT_INSN_BUF_SZ);

 event.sample.header.type = PERF_RECORD_SAMPLE;
 event.sample.header.misc = sample.cpumode;
 event.sample.header.size = sizeof(struct perf_event_header);

 if (bts->synth_opts.inject) {
  event.sample.header.size = bts->branches_event_size;
  ret = perf_event__synthesize_sample(&event,
          bts->branches_sample_type,
          0, &sample);
  if (ret)
   return ret;
 }

 ret = perf_session__deliver_synth_event(bts->session, &event, &sample);
 if (ret)
  pr_err("Intel BTS: failed to deliver branch event, error %d\n",
         ret);

 return ret;
}
