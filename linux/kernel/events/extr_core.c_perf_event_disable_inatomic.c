
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int pending; int pending_disable; } ;


 int WRITE_ONCE (int ,int ) ;
 int irq_work_queue (int *) ;
 int smp_processor_id () ;

void perf_event_disable_inatomic(struct perf_event *event)
{
 WRITE_ONCE(event->pending_disable, smp_processor_id());

 irq_work_queue(&event->pending);
}
