
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct s390_cpumsf_queue {int dummy; } ;
struct TYPE_7__ {TYPE_2__* heap_array; scalar_t__ heap_cnt; } ;
struct TYPE_5__ {struct auxtrace_queue* queue_array; } ;
struct s390_cpumsf {TYPE_3__ heap; TYPE_1__ queues; } ;
struct auxtrace_queue {struct s390_cpumsf_queue* priv; } ;
struct TYPE_6__ {scalar_t__ ordinal; unsigned int queue_nr; } ;


 int auxtrace_heap__add (TYPE_3__*,unsigned int,scalar_t__) ;
 int auxtrace_heap__pop (TYPE_3__*) ;
 int s390_cpumsf_run_decoder (struct s390_cpumsf_queue*,scalar_t__*) ;

__attribute__((used)) static int s390_cpumsf_process_queues(struct s390_cpumsf *sf, u64 timestamp)
{
 unsigned int queue_nr;
 u64 ts;
 int ret;

 while (1) {
  struct auxtrace_queue *queue;
  struct s390_cpumsf_queue *sfq;

  if (!sf->heap.heap_cnt)
   return 0;

  if (sf->heap.heap_array[0].ordinal >= timestamp)
   return 0;

  queue_nr = sf->heap.heap_array[0].queue_nr;
  queue = &sf->queues.queue_array[queue_nr];
  sfq = queue->priv;

  auxtrace_heap__pop(&sf->heap);
  if (sf->heap.heap_cnt) {
   ts = sf->heap.heap_array[0].ordinal + 1;
   if (ts > timestamp)
    ts = timestamp;
  } else {
   ts = timestamp;
  }

  ret = s390_cpumsf_run_decoder(sfq, &ts);
  if (ret < 0) {
   auxtrace_heap__add(&sf->heap, queue_nr, ts);
   return ret;
  }
  if (!ret) {
   ret = auxtrace_heap__add(&sf->heap, queue_nr, ts);
   if (ret < 0)
    return ret;
  }
 }
 return 0;
}
