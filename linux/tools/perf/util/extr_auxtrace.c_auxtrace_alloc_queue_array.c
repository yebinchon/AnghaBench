
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_queue {int * priv; int head; } ;


 int INIT_LIST_HEAD (int *) ;
 int UINT_MAX ;
 struct auxtrace_queue* calloc (unsigned int,int) ;

__attribute__((used)) static struct auxtrace_queue *auxtrace_alloc_queue_array(unsigned int nr_queues)
{
 struct auxtrace_queue *queue_array;
 unsigned int max_nr_queues, i;

 max_nr_queues = UINT_MAX / sizeof(struct auxtrace_queue);
 if (nr_queues > max_nr_queues)
  return ((void*)0);

 queue_array = calloc(nr_queues, sizeof(struct auxtrace_queue));
 if (!queue_array)
  return ((void*)0);

 for (i = 0; i < nr_queues; i++) {
  INIT_LIST_HEAD(&queue_array[i].head);
  queue_array[i].priv = ((void*)0);
 }

 return queue_array;
}
