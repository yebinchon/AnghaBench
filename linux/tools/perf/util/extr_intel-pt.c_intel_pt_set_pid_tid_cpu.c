
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct intel_pt_queue {int tid; TYPE_1__* thread; int cpu; int pid; } ;
struct intel_pt {int machine; scalar_t__ have_sched_switch; } ;
struct auxtrace_queue {int tid; int cpu; struct intel_pt_queue* priv; } ;
struct TYPE_3__ {int cpu; int pid_; } ;


 TYPE_1__* machine__find_thread (int ,int,int) ;
 int machine__get_current_tid (int ,int ) ;
 int thread__zput (TYPE_1__*) ;

__attribute__((used)) static void intel_pt_set_pid_tid_cpu(struct intel_pt *pt,
         struct auxtrace_queue *queue)
{
 struct intel_pt_queue *ptq = queue->priv;

 if (queue->tid == -1 || pt->have_sched_switch) {
  ptq->tid = machine__get_current_tid(pt->machine, ptq->cpu);
  thread__zput(ptq->thread);
 }

 if (!ptq->thread && ptq->tid != -1)
  ptq->thread = machine__find_thread(pt->machine, -1, ptq->tid);

 if (ptq->thread) {
  ptq->pid = ptq->thread->pid_;
  if (queue->cpu == -1)
   ptq->cpu = ptq->thread->cpu;
 }
}
