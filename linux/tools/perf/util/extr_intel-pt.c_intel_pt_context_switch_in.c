
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {scalar_t__ pid; scalar_t__ tid; int cpu; } ;
struct intel_pt_queue {int next_tid; int switch_state; scalar_t__ sync_switch; } ;
struct intel_pt {int machine; scalar_t__ sync_switch; } ;
typedef scalar_t__ pid_t ;







 struct intel_pt_queue* intel_pt_cpu_to_ptq (struct intel_pt*,int) ;
 scalar_t__ machine__get_current_tid (int ,int) ;
 int machine__set_current_tid (int ,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static int intel_pt_context_switch_in(struct intel_pt *pt,
          struct perf_sample *sample)
{
 pid_t pid = sample->pid;
 pid_t tid = sample->tid;
 int cpu = sample->cpu;

 if (pt->sync_switch) {
  struct intel_pt_queue *ptq;

  ptq = intel_pt_cpu_to_ptq(pt, cpu);
  if (ptq && ptq->sync_switch) {
   ptq->next_tid = -1;
   switch (ptq->switch_state) {
   case 130:
   case 128:
   case 129:
    break;
   case 132:
   case 131:
    ptq->switch_state = 129;
    break;
   default:
    break;
   }
  }
 }





 if (machine__get_current_tid(pt->machine, cpu) == tid)
  return 0;

 return machine__set_current_tid(pt->machine, cpu, pid, tid);
}
