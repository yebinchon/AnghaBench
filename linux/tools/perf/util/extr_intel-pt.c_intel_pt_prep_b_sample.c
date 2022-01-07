
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int misc; } ;
struct TYPE_6__ {TYPE_2__ header; } ;
union perf_event {TYPE_3__ sample; } ;
struct perf_sample {int period; int cpumode; int flags; int addr; int ip; int time; } ;
struct intel_pt_queue {int flags; TYPE_1__* state; int timestamp; } ;
struct intel_pt {int tc; int timeless_decoding; } ;
struct TYPE_4__ {int to_ip; int from_ip; } ;


 int intel_pt_cpumode (struct intel_pt*,int ) ;
 int intel_pt_prep_a_sample (struct intel_pt_queue*,union perf_event*,struct perf_sample*) ;
 int tsc_to_perf_time (int ,int *) ;

__attribute__((used)) static void intel_pt_prep_b_sample(struct intel_pt *pt,
       struct intel_pt_queue *ptq,
       union perf_event *event,
       struct perf_sample *sample)
{
 intel_pt_prep_a_sample(ptq, event, sample);

 if (!pt->timeless_decoding)
  sample->time = tsc_to_perf_time(ptq->timestamp, &pt->tc);

 sample->ip = ptq->state->from_ip;
 sample->cpumode = intel_pt_cpumode(pt, sample->ip);
 sample->addr = ptq->state->to_ip;
 sample->period = 1;
 sample->flags = ptq->flags;

 event->sample.header.misc = sample->cpumode;
}
