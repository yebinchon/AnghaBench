
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_bts_queue {unsigned int queue_nr; int pid; int tid; int cpu; struct intel_bts* bts; } ;
struct intel_bts {int dummy; } ;


 struct intel_bts_queue* zalloc (int) ;

__attribute__((used)) static struct intel_bts_queue *intel_bts_alloc_queue(struct intel_bts *bts,
           unsigned int queue_nr)
{
 struct intel_bts_queue *btsq;

 btsq = zalloc(sizeof(struct intel_bts_queue));
 if (!btsq)
  return ((void*)0);

 btsq->bts = bts;
 btsq->queue_nr = queue_nr;
 btsq->pid = -1;
 btsq->tid = -1;
 btsq->cpu = -1;

 return btsq;
}
