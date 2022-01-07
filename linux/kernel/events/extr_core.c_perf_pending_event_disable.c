
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int pending; int pending_disable; } ;


 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int) ;
 int irq_work_queue_on (int *,int) ;
 int perf_event_disable_local (struct perf_event*) ;
 int smp_processor_id () ;

__attribute__((used)) static void perf_pending_event_disable(struct perf_event *event)
{
 int cpu = READ_ONCE(event->pending_disable);

 if (cpu < 0)
  return;

 if (cpu == smp_processor_id()) {
  WRITE_ONCE(event->pending_disable, -1);
  perf_event_disable_local(event);
  return;
 }
 irq_work_queue_on(&event->pending, cpu);
}
