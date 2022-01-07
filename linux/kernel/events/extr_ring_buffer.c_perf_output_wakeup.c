
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_output_handle {TYPE_2__* event; TYPE_1__* rb; } ;
struct TYPE_4__ {int pending_wakeup; int pending; } ;
struct TYPE_3__ {int poll; } ;


 int EPOLLIN ;
 int atomic_set (int *,int ) ;
 int irq_work_queue (int *) ;

__attribute__((used)) static void perf_output_wakeup(struct perf_output_handle *handle)
{
 atomic_set(&handle->rb->poll, EPOLLIN);

 handle->event->pending_wakeup = 1;
 irq_work_queue(&handle->event->pending);
}
