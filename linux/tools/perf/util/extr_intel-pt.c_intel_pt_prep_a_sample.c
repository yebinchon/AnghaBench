
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int type; } ;
struct TYPE_4__ {TYPE_1__ header; } ;
union perf_event {TYPE_2__ sample; } ;
struct perf_sample {int insn; int insn_len; int cpu; int tid; int pid; } ;
struct perf_event_header {int dummy; } ;
struct intel_pt_queue {int insn; int insn_len; int cpu; int tid; int pid; } ;


 int INTEL_PT_INSN_BUF_SZ ;
 int PERF_RECORD_SAMPLE ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void intel_pt_prep_a_sample(struct intel_pt_queue *ptq,
       union perf_event *event,
       struct perf_sample *sample)
{
 event->sample.header.type = PERF_RECORD_SAMPLE;
 event->sample.header.size = sizeof(struct perf_event_header);

 sample->pid = ptq->pid;
 sample->tid = ptq->tid;
 sample->cpu = ptq->cpu;
 sample->insn_len = ptq->insn_len;
 memcpy(sample->insn, ptq->insn, INTEL_PT_INSN_BUF_SZ);
}
