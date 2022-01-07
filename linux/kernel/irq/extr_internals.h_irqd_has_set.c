
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 unsigned int __irqd_to_state (struct irq_data*) ;

__attribute__((used)) static inline bool irqd_has_set(struct irq_data *d, unsigned int mask)
{
 return __irqd_to_state(d) & mask;
}
