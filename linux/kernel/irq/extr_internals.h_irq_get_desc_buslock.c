
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 struct irq_desc* __irq_get_desc_lock (unsigned int,unsigned long*,int,unsigned int) ;

__attribute__((used)) static inline struct irq_desc *
irq_get_desc_buslock(unsigned int irq, unsigned long *flags, unsigned int check)
{
 return __irq_get_desc_lock(irq, flags, 1, check);
}
