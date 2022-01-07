
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwork; } ;
struct rpc_wait_queue {TYPE_1__ timer_list; } ;


 int cancel_delayed_work_sync (int *) ;

void rpc_destroy_wait_queue(struct rpc_wait_queue *queue)
{
 cancel_delayed_work_sync(&queue->timer_list.dwork);
}
