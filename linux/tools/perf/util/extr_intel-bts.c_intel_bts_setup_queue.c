
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_bts_queue {int cpu; int on_heap; TYPE_1__* buffer; int tid; } ;
struct intel_bts {int heap; scalar_t__ sampling_mode; } ;
struct auxtrace_queue {int cpu; int tid; struct intel_bts_queue* priv; int head; } ;
struct TYPE_2__ {int reference; } ;


 int ENOMEM ;
 TYPE_1__* auxtrace_buffer__next (struct auxtrace_queue*,int *) ;
 int auxtrace_heap__add (int *,unsigned int,int ) ;
 struct intel_bts_queue* intel_bts_alloc_queue (struct intel_bts*,unsigned int) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int intel_bts_setup_queue(struct intel_bts *bts,
     struct auxtrace_queue *queue,
     unsigned int queue_nr)
{
 struct intel_bts_queue *btsq = queue->priv;

 if (list_empty(&queue->head))
  return 0;

 if (!btsq) {
  btsq = intel_bts_alloc_queue(bts, queue_nr);
  if (!btsq)
   return -ENOMEM;
  queue->priv = btsq;

  if (queue->cpu != -1)
   btsq->cpu = queue->cpu;
  btsq->tid = queue->tid;
 }

 if (bts->sampling_mode)
  return 0;

 if (!btsq->on_heap && !btsq->buffer) {
  int ret;

  btsq->buffer = auxtrace_buffer__next(queue, ((void*)0));
  if (!btsq->buffer)
   return 0;

  ret = auxtrace_heap__add(&bts->heap, queue_nr,
      btsq->buffer->reference);
  if (ret)
   return ret;
  btsq->on_heap = 1;
 }

 return 0;
}
