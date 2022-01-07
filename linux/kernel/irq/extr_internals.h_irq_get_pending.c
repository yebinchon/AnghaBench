
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct cpumask {int dummy; } ;



__attribute__((used)) static inline void
irq_get_pending(struct cpumask *mask, struct irq_desc *desc)
{
}
