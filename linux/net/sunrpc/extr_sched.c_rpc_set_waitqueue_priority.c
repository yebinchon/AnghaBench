
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int priority; unsigned int nr; } ;



__attribute__((used)) static void rpc_set_waitqueue_priority(struct rpc_wait_queue *queue, int priority)
{
 if (queue->priority != priority) {
  queue->priority = priority;
  queue->nr = 1U << priority;
 }
}
