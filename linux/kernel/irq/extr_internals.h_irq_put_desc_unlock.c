
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int __irq_put_desc_unlock (struct irq_desc*,unsigned long,int) ;

__attribute__((used)) static inline void
irq_put_desc_unlock(struct irq_desc *desc, unsigned long flags)
{
 __irq_put_desc_unlock(desc, flags, 0);
}
