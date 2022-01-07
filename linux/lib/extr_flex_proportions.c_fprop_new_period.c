
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_global {int period; int sequence; int events; } ;
typedef int s64 ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int percpu_counter_add (int *,int) ;
 int percpu_counter_sum (int *) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

bool fprop_new_period(struct fprop_global *p, int periods)
{
 s64 events;
 unsigned long flags;

 local_irq_save(flags);
 events = percpu_counter_sum(&p->events);



 if (events <= 1) {
  local_irq_restore(flags);
  return 0;
 }
 write_seqcount_begin(&p->sequence);
 if (periods < 64)
  events -= events >> periods;

 percpu_counter_add(&p->events, -events);
 p->period += periods;
 write_seqcount_end(&p->sequence);
 local_irq_restore(flags);

 return 1;
}
