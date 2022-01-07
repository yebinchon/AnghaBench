
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_queues {unsigned int nr_queues; struct auxtrace_queue* queue_array; } ;
struct auxtrace_queue {int priv; int set; int cpu; int tid; int head; } ;


 unsigned int AUXTRACE_INIT_NR_QUEUES ;
 int EINVAL ;
 int ENOMEM ;
 struct auxtrace_queue* auxtrace_alloc_queue_array (unsigned int) ;
 int list_splice_tail (int *,int *) ;

__attribute__((used)) static int auxtrace_queues__grow(struct auxtrace_queues *queues,
     unsigned int new_nr_queues)
{
 unsigned int nr_queues = queues->nr_queues;
 struct auxtrace_queue *queue_array;
 unsigned int i;

 if (!nr_queues)
  nr_queues = AUXTRACE_INIT_NR_QUEUES;

 while (nr_queues && nr_queues < new_nr_queues)
  nr_queues <<= 1;

 if (nr_queues < queues->nr_queues || nr_queues < new_nr_queues)
  return -EINVAL;

 queue_array = auxtrace_alloc_queue_array(nr_queues);
 if (!queue_array)
  return -ENOMEM;

 for (i = 0; i < queues->nr_queues; i++) {
  list_splice_tail(&queues->queue_array[i].head,
     &queue_array[i].head);
  queue_array[i].tid = queues->queue_array[i].tid;
  queue_array[i].cpu = queues->queue_array[i].cpu;
  queue_array[i].set = queues->queue_array[i].set;
  queue_array[i].priv = queues->queue_array[i].priv;
 }

 queues->nr_queues = nr_queues;
 queues->queue_array = queue_array;

 return 0;
}
