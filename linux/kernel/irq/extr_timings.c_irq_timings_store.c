
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct irqt_stat {scalar_t__ last_ts; scalar_t__ count; } ;


 scalar_t__ NSEC_PER_SEC ;
 int __irq_timings_store (int,struct irqt_stat*,scalar_t__) ;

__attribute__((used)) static inline void irq_timings_store(int irq, struct irqt_stat *irqs, u64 ts)
{
 u64 old_ts = irqs->last_ts;
 u64 interval;





 irqs->last_ts = ts;






 interval = ts - old_ts;
 if (interval >= NSEC_PER_SEC) {
  irqs->count = 0;
  return;
 }

 __irq_timings_store(irq, irqs, interval);
}
