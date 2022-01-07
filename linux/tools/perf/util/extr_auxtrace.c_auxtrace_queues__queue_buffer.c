
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_queues {unsigned int nr_queues; int new_data; int populated; int next_buffer_nr; struct auxtrace_queue* queue_array; } ;
struct auxtrace_queue {int set; scalar_t__ tid; scalar_t__ cpu; int head; } ;
struct auxtrace_buffer {scalar_t__ tid; scalar_t__ cpu; int list; scalar_t__ buffer_nr; } ;


 int EINVAL ;
 int auxtrace_queues__grow (struct auxtrace_queues*,unsigned int) ;
 int list_add_tail (int *,int *) ;
 int pr_err (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int auxtrace_queues__queue_buffer(struct auxtrace_queues *queues,
      unsigned int idx,
      struct auxtrace_buffer *buffer)
{
 struct auxtrace_queue *queue;
 int err;

 if (idx >= queues->nr_queues) {
  err = auxtrace_queues__grow(queues, idx + 1);
  if (err)
   return err;
 }

 queue = &queues->queue_array[idx];

 if (!queue->set) {
  queue->set = 1;
  queue->tid = buffer->tid;
  queue->cpu = buffer->cpu;
 } else if (buffer->cpu != queue->cpu || buffer->tid != queue->tid) {
  pr_err("auxtrace queue conflict: cpu %d, tid %d vs cpu %d, tid %d\n",
         queue->cpu, queue->tid, buffer->cpu, buffer->tid);
  return -EINVAL;
 }

 buffer->buffer_nr = queues->next_buffer_nr++;

 list_add_tail(&buffer->list, &queue->head);

 queues->new_data = 1;
 queues->populated = 1;

 return 0;
}
