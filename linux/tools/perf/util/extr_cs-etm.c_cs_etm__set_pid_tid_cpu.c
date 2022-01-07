
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_etm_traceid_queue {int tid; TYPE_1__* thread; int pid; } ;
struct cs_etm_auxtrace {int machine; } ;
struct TYPE_2__ {int pid_; } ;


 TYPE_1__* machine__find_thread (int ,int,int) ;

__attribute__((used)) static void cs_etm__set_pid_tid_cpu(struct cs_etm_auxtrace *etm,
        struct cs_etm_traceid_queue *tidq)
{
 if ((!tidq->thread) && (tidq->tid != -1))
  tidq->thread = machine__find_thread(etm->machine, -1,
          tidq->tid);

 if (tidq->thread)
  tidq->pid = tidq->thread->pid_;
}
