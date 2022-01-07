
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dummy; } ;
struct irq_desc {int dummy; } ;



__attribute__((used)) static inline void
irq_pm_remove_action(struct irq_desc *desc, struct irqaction *action) { }
