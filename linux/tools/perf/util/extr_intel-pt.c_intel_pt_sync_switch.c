
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_pt_queue {int switch_state; int next_tid; int on_heap; int timestamp; int queue_nr; int sync_switch; } ;
struct intel_pt {int heap; int tc; int sync_switch; } ;
typedef int pid_t ;







 int auxtrace_heap__add (int *,int ,int ) ;
 struct intel_pt_queue* intel_pt_cpu_to_ptq (struct intel_pt*,int) ;
 int intel_pt_log (char*,int) ;
 int perf_time_to_tsc (int ,int *) ;

__attribute__((used)) static int intel_pt_sync_switch(struct intel_pt *pt, int cpu, pid_t tid,
    u64 timestamp)
{
 struct intel_pt_queue *ptq;
 int err;

 if (!pt->sync_switch)
  return 1;

 ptq = intel_pt_cpu_to_ptq(pt, cpu);
 if (!ptq || !ptq->sync_switch)
  return 1;

 switch (ptq->switch_state) {
 case 130:
  break;
 case 128:
 case 129:
  ptq->next_tid = tid;
  ptq->switch_state = 131;
  return 0;
 case 132:
  if (!ptq->on_heap) {
   ptq->timestamp = perf_time_to_tsc(timestamp,
         &pt->tc);
   err = auxtrace_heap__add(&pt->heap, ptq->queue_nr,
       ptq->timestamp);
   if (err)
    return err;
   ptq->on_heap = 1;
  }
  ptq->switch_state = 129;
  break;
 case 131:
  intel_pt_log("ERROR: cpu %d expecting switch ip\n", cpu);
  break;
 default:
  break;
 }

 ptq->next_tid = -1;

 return 1;
}
