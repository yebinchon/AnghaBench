
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {unsigned long flags; } ;


 unsigned long IRQ_WORK_CLAIMED ;
 unsigned long IRQ_WORK_PENDING ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 int cpu_relax () ;

__attribute__((used)) static bool irq_work_claim(struct irq_work *work)
{
 unsigned long flags, oflags, nflags;





 flags = work->flags & ~IRQ_WORK_PENDING;
 for (;;) {
  nflags = flags | IRQ_WORK_CLAIMED;
  oflags = cmpxchg(&work->flags, flags, nflags);
  if (oflags == flags)
   break;
  if (oflags & IRQ_WORK_PENDING)
   return 0;
  flags = oflags;
  cpu_relax();
 }

 return 1;
}
