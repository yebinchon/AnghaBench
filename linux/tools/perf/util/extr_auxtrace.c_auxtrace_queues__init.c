
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_queues {int queue_array; int nr_queues; } ;


 int AUXTRACE_INIT_NR_QUEUES ;
 int ENOMEM ;
 int auxtrace_alloc_queue_array (int ) ;

int auxtrace_queues__init(struct auxtrace_queues *queues)
{
 queues->nr_queues = AUXTRACE_INIT_NR_QUEUES;
 queues->queue_array = auxtrace_alloc_queue_array(queues->nr_queues);
 if (!queues->queue_array)
  return -ENOMEM;
 return 0;
}
