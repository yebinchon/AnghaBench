
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; int dwork; scalar_t__ expires; } ;
struct rpc_wait_queue {unsigned char maxpriority; TYPE_1__ timer_list; scalar_t__ qlen; int * tasks; int lock; } ;


 int ARRAY_SIZE (int *) ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int __rpc_queue_timer_fn ;
 int rpc_assign_waitqueue_name (struct rpc_wait_queue*,char const*) ;
 int rpc_reset_waitqueue_priority (struct rpc_wait_queue*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void __rpc_init_priority_wait_queue(struct rpc_wait_queue *queue, const char *qname, unsigned char nr_queues)
{
 int i;

 spin_lock_init(&queue->lock);
 for (i = 0; i < ARRAY_SIZE(queue->tasks); i++)
  INIT_LIST_HEAD(&queue->tasks[i]);
 queue->maxpriority = nr_queues - 1;
 rpc_reset_waitqueue_priority(queue);
 queue->qlen = 0;
 queue->timer_list.expires = 0;
 INIT_DEFERRABLE_WORK(&queue->timer_list.dwork, __rpc_queue_timer_fn);
 INIT_LIST_HEAD(&queue->timer_list.list);
 rpc_assign_waitqueue_name(queue, qname);
}
