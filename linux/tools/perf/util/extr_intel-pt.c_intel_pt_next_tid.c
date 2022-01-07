
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_pt_queue {int next_tid; size_t queue_nr; int cpu; } ;
struct TYPE_2__ {struct auxtrace_queue* queue_array; } ;
struct intel_pt {TYPE_1__ queues; int machine; } ;
struct auxtrace_queue {int dummy; } ;
typedef int pid_t ;


 int intel_pt_log (char*,int ,int) ;
 int intel_pt_set_pid_tid_cpu (struct intel_pt*,struct auxtrace_queue*) ;
 int machine__set_current_tid (int ,int ,int,int) ;

__attribute__((used)) static int intel_pt_next_tid(struct intel_pt *pt, struct intel_pt_queue *ptq)
{
 struct auxtrace_queue *queue;
 pid_t tid = ptq->next_tid;
 int err;

 if (tid == -1)
  return 0;

 intel_pt_log("switch: cpu %d tid %d\n", ptq->cpu, tid);

 err = machine__set_current_tid(pt->machine, ptq->cpu, -1, tid);

 queue = &pt->queues.queue_array[ptq->queue_nr];
 intel_pt_set_pid_tid_cpu(pt, queue);

 ptq->next_tid = -1;

 return err;
}
